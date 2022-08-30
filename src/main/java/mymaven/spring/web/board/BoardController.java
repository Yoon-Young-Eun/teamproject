package mymaven.spring.web.board;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mymaven.spring.web.board.impl.BoardDAOMybatis;
import mymaven.spring.web.iamport.refund;
import mymaven.spring.web.iamport.token;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@SessionAttributes("board") 
public class BoardController {
	
	@Autowired
	private RundryService boardService;

	@Autowired
	private BoardDAOMybatis myBatis;
	
//	@ModelAttribute
//	1. Controller 메서드의 매개변수로 선언된 Command 객체의 이름을 변경할 때 사용. 
//	2. 또 다른 기능은 View(JSP)에서 사용할 데이터를 설정하는 용도로 사용할 수 있다. 
//	   @ModelAttribute가 설정된 메서드는 @RequestMapping 어노테이션이 적용된 메서드보다 먼저 호출된다. 
//	   또한 @ModelAttribute 메서드 실행결과로 리턴된 객체는 자동으로 Model에 저장된다.
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "member_address1");
		conditionMap.put("내용", "member_name");
		return conditionMap;
	}
	
	// @RequestMapping 어노테이션에 method 속성을 설정하지 않을 경우 GET, POST등 모든 HTTP 전송 방식을 처리하게 된다.
	// @RequestMapping 이용하면 마치 Service처럼 클라이언트의 요청 방식(GET/POST)에 따라 수행될 메서드를 다르게 처리할

	
	//마이바티스 이전 파일다운로드 방식
//	@RequestMapping("/insertBoard.do")
//	public String insertBoard(BoardVO vo) throws IOException {
//		System.out.println("글 등록 처리");
//		MultipartFile uploadFile = vo.getUploadFile();
//		if(!uploadFile.isEmpty()) {
//		String fileName = uploadFile.getOriginalFilename();
//		uploadFile.transferTo(new File("C:/myProject/" + fileName));
//	
//		}
//		boardService.insertBoard(vo);
//		return "getBoardList.do";
//	}	
	
	//마이바티스용
	@RequestMapping("/insertBoard.do")
	public String insertBoard(MemberVO vo) throws IOException {
	
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
	    System.out.println("글 등록 처리");
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
		System.out.println("글 수정 기능 처리");
		boardService.updateBoard(vo);
		return "member.do";
		//return "getBoardList.do";
	}

	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(MemberVO vo) {
		System.out.println("글 삭제 처리");
		boardService.deleteBoard(vo);
		return "member.do";
		//return "getBoardList.do";
	}

	@RequestMapping("/getBoard.do")
	public String getBoard(MemberVO vo, Model model) {
		System.out.println("글 상세 보기 처리");
		model.addAttribute("board", boardService.getBoard(vo));
		return "getBoard.jsp";
	}

//	@RequestMapping("/import_payment.do")
//	public String getToken(Token tk) throws Exception {
//		System.out.println("Token");
//		tk.getToken();
//		return "import_payment.jsp";
//	}
	
//	클라이언트가 “getBoardList.do”요청을 전송하면 @ModelAttribute가 설정된 searchConditionMap() 메서드가 먼저 실행된다.
//	그러면 @ModelAttribute로 지정한 이름으로 searchConditionMap() 메서드가 리턴 한 값을 Model 객체에 저장한다.
//  그러고 나서야 클라이언트가 호출한 getBoardList() 메서드가 실행된다.
//	이때 boardList라는 이름으로 검색 결과를 Model에 저장하면 최종적으로 Model에는 두 개의 컬렉션이 저장되게 된다.

	
	@RequestMapping("/member.do")
	public String getBoardList(String [] tdArr, String message, String selectPage, String searchKeyword, String searchCondition, Model model, String pageNum, MessageVO vo) {
		System.out.println("글 목록 검색 처리");
		
		//Cool메신저 
		System.out.println(tdArr);
	    System.out.println("message :"+ message);
		if( tdArr != null && message != null ) {
			System.out.println("왔나?");
			String [] sns = tdArr; 
			  String api_key = "NCSK8KGKIZD54AMU";   //coolsns 가입후 
			  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; //coolsns 가입후 
			  Message coolsms = new Message(api_key, api_secret);
			  	
			    HashMap<String, String> params = new HashMap<String, String>();
			    for(int i = 0;i<tdArr.length; i++) {
			    params.put("to", tdArr[i]);	 // 문자를 보낼 전화번호를 배열로 받음
			    }
			    params.put("from", "01031721622");	
			    params.put("type", "SMS");
			    params.put("text", message);
			    System.out.println(message);
			    params.put("app_version", "test app 1.2"); 
			    // application name and version

			    try {
			      JSONObject obj = (JSONObject) coolsms.send(params);
			      System.out.println(obj.toString());
			    } catch (CoolsmsException e) {
			      System.out.println(e.getMessage());
			      System.out.println(e.getCode());
			    }		
		} //문자 코드 끝
		
		// 페이징 처리
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
	     
	       int startRow = (currentPage -1)* pageSize +1;
	       int endRow = currentPage * pageSize; 
	       System.out.println("endRow =" +  endRow);
	       int count =0; 	
	       int number = 0;  
	       List<Map<String, Object>> articleList = null;
	       count = myBatis.getArticleCount(); 

	       if(count >0) {
	    	   articleList= myBatis.getArticleList(searchKeyword, searchCondition, startRow, endRow);
	    	  
	       }else {
	    	   articleList=Collections.emptyList(); 
	       }
	       
	      // System.out.println("articleList =" +  articleList);
	       
	       model.addAttribute("pageNum", pageNum);
	       model.addAttribute("pageSize", pageSize);
	       model.addAttribute("currentPage", currentPage);
	       model.addAttribute("endRow", endRow);
	       model.addAttribute("count", count);
	       model.addAttribute("number", number);
	       model.addAttribute("articleList", articleList);
	       model.addAttribute("number", number);
	       System.out.println("articleList =" +  articleList);
	       
	       List<MessageVO> messageList = boardService.getMessageList(vo);
	       System.out.println(messageList);
	       model.addAttribute("messageList", messageList);
	       
		return "admin/member.jsp";
		//return "getBoardList.jsp";
	}

	
	
	
	
	
	@RequestMapping("/import_payment.do")
	public String getToken(token tk, Model model) throws Exception {
		System.out.println("토큰을 처리하자.");
		model.addAttribute("token", tk);
		System.out.println(token.getToken());
		return "import_payment.jsp";
	}
   
	
//	// XML 설정
//	@RequestMapping("/dataTransform.do")
//	@ResponseBody
//	public BoardListDTO dataTransform(BoardDTO dto){
//	dto.setSearchCondition("TITLE");
//	dto.setSearchKeyword("");
//	List<BoardDTO> boardList = boardService.getBoardList(dto);
//	BoardListDTO boardListDto = new BoardListDTO();
//	boardListDto.setBoardList(boardList);
//	return boardListDto;
//	}
	
//	//json
//	@RequestMapping("/dataTransform.do")
//	@ResponseBody
//	public List<BoardDTO> dataTransform(BoardDTO dto){
//	dto.setSearchCondition("TITLE");
//	dto.setSearchKeyword("");
//	List<BoardDTO> boardList = boardService.getBoardList(dto);
//	return boardList;
//	}
	
}

