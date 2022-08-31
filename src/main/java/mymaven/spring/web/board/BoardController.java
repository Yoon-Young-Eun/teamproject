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
//	1. Controller 硫붿꽌�뱶�쓽 留ㅺ컻蹂��닔濡� �꽑�뼵�맂 Command 媛앹껜�쓽 �씠由꾩쓣 蹂�寃쏀븷 �븣 �궗�슜. 
//	2. �삉 �떎瑜� 湲곕뒫�� View(JSP)�뿉�꽌 �궗�슜�븷 �뜲�씠�꽣瑜� �꽕�젙�븯�뒗 �슜�룄濡� �궗�슜�븷 �닔 �엳�떎. 
//	   @ModelAttribute媛� �꽕�젙�맂 硫붿꽌�뱶�뒗 @RequestMapping �뼱�끂�뀒�씠�뀡�씠 �쟻�슜�맂 硫붿꽌�뱶蹂대떎 癒쇱� �샇異쒕맂�떎. 
//	   �삉�븳 @ModelAttribute 硫붿꽌�뱶 �떎�뻾寃곌낵濡� 由ы꽩�맂 媛앹껜�뒗 �옄�룞�쑝濡� Model�뿉 ���옣�맂�떎.
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "member_address1");
		conditionMap.put("내용", "member_name");

		conditionMap.put("�젣紐�", "member_address1");
		conditionMap.put("�궡�슜", "member_name");

		return conditionMap;
	}
	
	// @RequestMapping �뼱�끂�뀒�씠�뀡�뿉 method �냽�꽦�쓣 �꽕�젙�븯吏� �븡�쓣 寃쎌슦 GET, POST�벑 紐⑤뱺 HTTP �쟾�넚 諛⑹떇�쓣 泥섎━�븯寃� �맂�떎.
	// @RequestMapping �씠�슜�븯硫� 留덉튂 Service泥섎읆 �겢�씪�씠�뼵�듃�쓽 �슂泥� 諛⑹떇(GET/POST)�뿉 �뵲�씪 �닔�뻾�맆 硫붿꽌�뱶瑜� �떎瑜닿쾶 泥섎━�븷

	
	//留덉씠諛뷀떚�뒪 �씠�쟾 �뙆�씪�떎�슫濡쒕뱶 諛⑹떇
//	@RequestMapping("/insertBoard.do")
//	public String insertBoard(BoardVO vo) throws IOException {
//		System.out.println("湲� �벑濡� 泥섎━");
//		MultipartFile uploadFile = vo.getUploadFile();
//		if(!uploadFile.isEmpty()) {
//		String fileName = uploadFile.getOriginalFilename();
//		uploadFile.transferTo(new File("C:/myProject/" + fileName));
//	
//		}
//		boardService.insertBoard(vo);
//		return "getBoardList.do";
//	}	
	
	//留덉씠諛뷀떚�뒪�슜
	@RequestMapping("/insertBoard.do")
	public String insertBoard(MemberVO vo) throws IOException {
	
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
	    System.out.println("湲� �벑濡� 泥섎━");
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
		System.out.println("湲� �닔�젙 湲곕뒫 泥섎━");
		boardService.updateBoard(vo);
		return "member.do";
		//return "getBoardList.do";
	}

	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(MemberVO vo) {
		System.out.println("湲� �궘�젣 泥섎━");
		boardService.deleteBoard(vo);
		return "member.do";
		//return "getBoardList.do";
	}

	@RequestMapping("/getBoard.do")
	public String getBoard(MemberVO vo, Model model) {
		System.out.println("湲� �긽�꽭 蹂닿린 泥섎━");
		model.addAttribute("board", boardService.getBoard(vo));
		return "getBoard.jsp";
	}

//	@RequestMapping("/import_payment.do")
//	public String getToken(Token tk) throws Exception {
//		System.out.println("Token");
//		tk.getToken();
//		return "import_payment.jsp";
//	}
	
//	�겢�씪�씠�뼵�듃媛� �쐅etBoardList.do�앹슂泥��쓣 �쟾�넚�븯硫� @ModelAttribute媛� �꽕�젙�맂 searchConditionMap() 硫붿꽌�뱶媛� 癒쇱� �떎�뻾�맂�떎.
//	洹몃윭硫� @ModelAttribute濡� 吏��젙�븳 �씠由꾩쑝濡� searchConditionMap() 硫붿꽌�뱶媛� 由ы꽩 �븳 媛믪쓣 Model 媛앹껜�뿉 ���옣�븳�떎.
//  洹몃윭怨� �굹�꽌�빞 �겢�씪�씠�뼵�듃媛� �샇異쒗븳 getBoardList() 硫붿꽌�뱶媛� �떎�뻾�맂�떎.
//	�씠�븣 boardList�씪�뒗 �씠由꾩쑝濡� 寃��깋 寃곌낵瑜� Model�뿉 ���옣�븯硫� 理쒖쥌�쟻�쑝濡� Model�뿉�뒗 �몢 媛쒖쓽 而щ젆�뀡�씠 ���옣�릺寃� �맂�떎.

	
	@RequestMapping("/member.do")
	public String getBoardList(String [] tdArr, String message, String selectPage, String searchKeyword, String searchCondition, Model model, String pageNum, MessageVO vo) {
		System.out.println("湲� 紐⑸줉 寃��깋 泥섎━");
		
		//Cool硫붿떊�� 
		System.out.println(tdArr);
	    System.out.println("message :"+ message);
		if( tdArr != null && message != null ) {
			System.out.println("�솕�굹?");
			String [] sns = tdArr; 
			  String api_key = "NCSK8KGKIZD54AMU";   //coolsns 媛��엯�썑 
			  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; //coolsns 媛��엯�썑 
			  Message coolsms = new Message(api_key, api_secret);
			  	
			    HashMap<String, String> params = new HashMap<String, String>();
			    for(int i = 0;i<tdArr.length; i++) {
			    params.put("to", tdArr[i]);	 // 臾몄옄瑜� 蹂대궪 �쟾�솕踰덊샇瑜� 諛곗뿴濡� 諛쏆쓬
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
		} //臾몄옄 肄붾뱶 �걹
		
		// �럹�씠吏� 泥섎━
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
		System.out.println("�넗�겙�쓣 泥섎━�븯�옄.");
		model.addAttribute("token", tk);
		System.out.println(token.getToken());
		return "import_payment.jsp";
	}
   
	
//	// XML �꽕�젙
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

