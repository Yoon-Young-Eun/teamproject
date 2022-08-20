package mymaven.spring.web.board;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import mymaven.spring.web.board.impl.BoardDAOMybatis;

@Controller
@SessionAttributes("board") 
public class BoardController {
	
	@Autowired
	private RundryService boardService;

	@Autowired
	private BoardDAOMybatis myBatis;

	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "member_address1");
		conditionMap.put("내용", "member_name");
		
		return conditionMap;
	}
	
	@RequestMapping("/insertBoard.do")
	public String insertBoard(MemberVO vo) throws IOException {
	
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
		String fileName = uploadFile.getOriginalFilename();
		uploadFile.transferTo(new File("C:\\myProject\\mySpring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\mymaven\\img\\" + fileName));
		System.out.println("uploadFile");
		
		vo.setDownloadFile("img/" + fileName);
		System.out.println("downloadFile");
		}
		boardService.insertBoard(vo);
		return "member.do";
//		return "getBoardList.do";
	}
	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") MemberVO vo) {

		boardService.updateBoard(vo);
		return "member.do";
		//return "getBoardList.do";
	}

	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(MemberVO vo) {

		boardService.deleteBoard(vo);
		return "member.do";
		//return "getBoardList.do";
	}

	@RequestMapping("/getBoard.do")
	public String getBoard(MemberVO vo, Model model) {

		model.addAttribute("board", boardService.getBoard(vo));
		return "getBoard.jsp";
	}


	
//	@GetMapping("/member.do")
//	public String getBoardList2(@RequestParam("selectPage")String selectPage, String searchKeyword, String searchCondition, Model model, String pageNum) {
//		System.out.println("member.do");
//		  
//	      if (pageNum == null) {
//	    	   pageNum = "1";
//	       }
//	      
//	      System.out.println("selectPage =" +selectPage);
//	       int pageSize = Integer.parseInt(selectPage); 
//	       System.out.println("pageSize =" +  pageSize);
//	       int currentPage = Integer.parseInt(pageNum); 
//	       //한 페이지의 시작글 번호
//	       int startRow = (currentPage -1)* pageSize +1;
//	       int endRow = currentPage * pageSize; // 한페이지의 마지막 글번호
//	       int count =0; //전체 글수?	
//	       int number = 0;  // 현페이지 첫번째 번호?
//	       List<Map<String, Object>> articleList = null;
//	       count = myBatis.getArticleCount(); //전체 글의 수
//	       if(count >0) {//현재 페이지에 해당하는 글 목록
//	    	   System.out.println(searchCondition + searchKeyword);
//	    	   articleList= myBatis.getArticleList(searchKeyword, searchCondition, startRow, endRow);
//	    	  
//	    	   System.out.println(articleList);
//	       }else {
//	    	   articleList=Collections.emptyList();  // 테이블에 값이 없다면, 결과가 없다는것 알수있도록 빈객체를 반환하는 것.
//	       }
//	       number= count - (currentPage-1)*pageSize; //글목록에 표시한 글 번호 
//	       //해당 뷰에서 사용할 속성
//	       
//	       model.addAttribute("pageNum", pageNum);
//	       model.addAttribute("pageSize", pageSize);
//	       model.addAttribute("currentPage", currentPage);
//	       model.addAttribute("endRow", endRow);
//	       model.addAttribute("count", count);
//	       model.addAttribute("number", number);
//	       model.addAttribute("articleList", articleList);
//	       model.addAttribute("number", number);
//	       
//	       System.out.println("지금!");
//	       System.out.println("이전!");
//		return "admin/member.jsp";
//		//return "getBoardList.jsp";
//	}
	
	

	@RequestMapping("/member.do")
	public String getBoardList(String selectPage, String searchKeyword, String searchCondition, Model model, String pageNum) {
		System.out.println("member.do");
		  
	      if (pageNum == null) {
	    	   pageNum = "1";
	       }
	      
	      System.out.println(selectPage);
	      if (selectPage==null ) {
	    	  selectPage = "5";
	      }
	      System.out.println("selectPage =" + selectPage);
		
	       int pageSize = Integer.parseInt(selectPage);
	       System.out.println("pageSize =" +  pageSize);
	       int currentPage = Integer.parseInt(pageNum); 
	       //한 페이지의 시작글 번호
	       int startRow = (currentPage -1)* pageSize +1;
	       int endRow = currentPage * pageSize; // 한페이지의 마지막 글번호
	       System.out.println("endRow =" +  endRow);
	       int count =0; //전체 글수?	
	       int number = 0;  // 현페이지 첫번째 번호?
	       List<Map<String, Object>> articleList = null;
	       count = myBatis.getArticleCount(); //전체 글의 수
	       if(count >0) {//현재 페이지에 해당하는 글 목록
	    	   articleList= myBatis.getArticleList(searchKeyword, searchCondition, startRow, endRow);
	    	  
	       }else {
	    	   articleList=Collections.emptyList();  // 테이블에 값이 없다면, 결과가 없다는것 알수있도록 빈객체를 반환하는 것.
	       }
	       number= count - (currentPage-1)*pageSize; //글목록에 표시한 글 번호 
	       //해당 뷰에서 사용할 속성
	       
	       System.out.println("articleList =" +  articleList);
	       
	       model.addAttribute("pageNum", pageNum);
	       model.addAttribute("pageSize", pageSize);
	       model.addAttribute("currentPage", currentPage);
	       model.addAttribute("endRow", endRow);
	       model.addAttribute("count", count);
	       model.addAttribute("number", number);
	       model.addAttribute("articleList", articleList);
	       model.addAttribute("number", number);
	       
	       System.out.println("지금!");
	       System.out.println("이전!");
		return "admin/member.jsp";
		//return "getBoardList.jsp";
	}
	
	
	
	
	//@RequestMapping("/getBoardList.do")
//	@RequestMapping("/member.do")
//	public String getBoardList(String searchKeyword, String searchCondition, Model model, String pageNum) {
//		System.out.println("member.do");
//		  
//	      if (pageNum == null) {
//	    	   pageNum = "1";
//	       }
//	      
//		  int pageSize = 5; //한 페이지의 글의 개수
//	       int currentPage = Integer.parseInt(pageNum); 
//	       //한 페이지의 시작글 번호
//	       int startRow = (currentPage -1)* pageSize +1;
//	       int endRow = currentPage * pageSize; // 한페이지의 마지막 글번호
//	       int count =0; //전체 글수?	
//	       int number = 0;  // 현페이지 첫번째 번호?
//	       List<Map<String, Object>> articleList = null;
//	       count = myBatis.getArticleCount(); //전체 글의 수
//	       if(count >0) {//현재 페이지에 해당하는 글 목록
//	    	   System.out.println(searchCondition + searchKeyword);
//	    	   articleList= myBatis.getArticleList(searchKeyword, searchCondition, startRow, endRow);
//	    	  
//	    	   System.out.println(articleList);
//	       }else {
//	    	   articleList=Collections.emptyList();  // 테이블에 값이 없다면, 결과가 없다는것 알수있도록 빈객체를 반환하는 것.
//	       }
//	       number= count - (currentPage-1)*pageSize; //글목록에 표시한 글 번호 
//	       //해당 뷰에서 사용할 속성
//	       
//	       model.addAttribute("pageNum", pageNum);
//	       model.addAttribute("pageSize", pageSize);
//	       model.addAttribute("currentPage", currentPage);
//	       model.addAttribute("endRow", endRow);
//	       model.addAttribute("count", count);
//	       model.addAttribute("number", number);
//	       model.addAttribute("articleList", articleList);
//	       model.addAttribute("number", number);
//	       
//	       System.out.println("지금!");
//	       System.out.println("이전!");
//		return "admin/member.jsp";
//		//return "getBoardList.jsp";
//	}

//	//json
//	@RequestMapping("/dataTransform.do")
//	@ResponseBody
//	public List<MemberVO> dataTransform(MemberVO vo){
//	vo.setSearchCondition("TITLE");
//	vo.setSearchKeyword("");
//	List<MemberVO> boardList = boardService.getBoardList(vo);
//	return boardList;
//	}
//	
	
}

