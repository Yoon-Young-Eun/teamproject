package com.semo.web.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.semo.web.admin.service.Ad_BoardService;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.amazon.s3.AwsS3;

import edu.emory.mathcs.backport.java.util.Collections;

@Controller
public class Ad_EventController {

	@Autowired
	HttpSession session;
	
	@Autowired
	private Ad_BoardService boardservice;

	@RequestMapping(value="/getEventList.mdo", method = RequestMethod.GET)
	   public String getEventList(PagingVO pvo, EventVO vo, Model model) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
	      System.out.println("글 목록 처리");
	  model.addAttribute("search",pvo);
	
	  //페이징
	  if (pvo.getPageNum() == null) {
	     pvo.setPageNum("1");
	  }
	  System.out.println(pvo.getSelectPage());
	  if (pvo.getSelectPage()==null) {
	     pvo.setSelectPage("5");
	  }
	
	  int pageSize = Integer.parseInt(pvo.getSelectPage());
	  int currentPage = Integer.parseInt(pvo.getPageNum());
	  System.out.println("paagenum"+currentPage);
	  pvo.setStartRow((currentPage - 1)*pageSize+1);
	  pvo.setEndRow(currentPage * pageSize);
	  int count=0;
	
	  count=boardservice.getEventCount(pvo);
	  System.out.println(count);
	
	  List<EventVO> EventList = null;
	  if(count > 0) {
	     EventList = boardservice.getEventList(pvo);
	  }else {
	     EventList=Collections.emptyList();
	  }

      if(count >0) {
         int pageBlock =5;
         int imsi =count % pageSize ==0 ?0:1;
         int pageCount = count/pageSize +imsi;
         int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1;
         int endPage = startPage + pageBlock -1;

         if(endPage > pageCount) {
            endPage = pageCount;
         }

         model.addAttribute("count", count);
         model.addAttribute("pageCount",pageCount);
         model.addAttribute("startPage",startPage);
         model.addAttribute("endPage",endPage);
         model.addAttribute("pageBlock",pageBlock);
      }

      Map<String, String> condition = new HashMap<String, String>();
      condition.put("제목", "board_event_title");
      condition.put("내용", "board_event_content");

      model.addAttribute("condition", condition);
      model.addAttribute("EventList", EventList);
      return "/admin/board_event.jsp";
   }


	@RequestMapping("/getEvent.mdo")
   public String getEvent(EventVO vo, Model model) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
      System.out.println("글 상세 보기 처리");
      System.out.println("vo"+vo);
      String event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/";
      EventVO vos=boardservice.getEvent(vo); //getEvent 문제
      String filename = vos.getBoard_event_filepath().replace(event_filepath, "");
      System.out.println(vos);
      model.addAttribute("event", vos);
      model.addAttribute("filename", filename);
      return "/admin/getBoard_event.jsp";
   }

   @RequestMapping(value="/insertEvent.mdo", method=RequestMethod.GET)
   public String insertEvent(EventVO vo) {
      System.out.println("글 등록 처리");
      return "/admin/board_event_write.jsp";
   }


	@RequestMapping("/EventUpload.mdo")
	public String EventUpload(EventVO vo, MultipartFile EventFile, MultipartFile banner) throws IOException, SQLException {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		
		// aws s3 파일 업로드 처리 */
		AwsS3 awss3 = AwsS3.getInstance(); 
		InputStream is = EventFile.getInputStream();
		String key = EventFile.getOriginalFilename();
		String contentType = EventFile.getContentType();
		long contentLength = EventFile.getSize();

		String bucket = "semoproject/event";

		awss3.upload(is, key, contentType, contentLength, bucket);
		String event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/" + key;
		vo.setBoard_event_filepath(event_filepath);
		
		InputStream is2 = banner.getInputStream();
		String key2 = banner.getOriginalFilename();
		String contentType2 = banner.getContentType();
		long contentLength2 = banner.getSize();
		
		String bucket2 = "semoproject/event";

		awss3.upload(is2, key2, contentType2, contentLength2, bucket2);
		String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/" + key2;
		vo.setBanner_filepath(banner_filepath);
		
		boardservice.insertEvent(vo);

		return "redirect:/getEventList.mdo";
	}

	@RequestMapping(value="/updateEvent.mdo")
	public String updateEvent(EventVO vo, MultipartFile eventt, MultipartFile banner) throws SQLException, IOException{
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		
		AwsS3 awss3 = AwsS3.getInstance();
		System.out.print(vo);
		System.out.println(eventt);
		System.out.println("글 수정 기능 처리");
		EventVO bringData = boardservice.getEvent(vo);
		System.out.println("bringData:    "+bringData);
		int index = bringData.getBoard_event_filepath().indexOf("/", 20);
		String key = bringData.getBoard_event_filepath().substring(index+1);

		if(!eventt.getOriginalFilename().equals("")) {
			if(!key.equals("event/" + eventt)) {
				System.out.println("이미지 삭제 if절");
				awss3.delete(key);

				InputStream is = eventt.getInputStream();
				String uploadKey = eventt.getOriginalFilename();
				String contentType = eventt.getContentType();
				long contentLength = eventt.getSize();

				String bucket = "semoproject/event";

				awss3.upload(is, uploadKey, contentType, contentLength, bucket);

				String board_event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/" + uploadKey;
				bringData.setBoard_event_filepath(board_event_filepath);
			}else {
				System.out.println("삭제 첫번쨰 else");
				bringData.setBoard_event_filepath(bringData.getBoard_event_filepath());
			}
		}else {
			System.out.println("파일이름이 다를떄 else");
			bringData.setBoard_event_filepath(bringData.getBoard_event_filepath());
		}
		
		EventVO bringData2 = boardservice.getEvent(vo);
		System.out.println("bringData2:    "+bringData2);
		int index2 = bringData2.getBoard_event_filepath().indexOf("/", 20);
		String key2 = bringData2.getBoard_event_filepath().substring(index2+1);
		
		if(!banner.getOriginalFilename().equals("")) {
			if(!key2.equals("event/" + banner)) {
				awss3.delete(key2);

				InputStream is2 = banner.getInputStream();
				String uploadKey2 = banner.getOriginalFilename();
				String contentType2 = banner.getContentType();
				long contentLength2 = banner.getSize();

				String bucket2 = "semoproject/event";

				awss3.upload(is2, uploadKey2, contentType2, contentLength2, bucket2);

				String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/" + uploadKey2;
				bringData2.setBanner_filepath(banner_filepath);
				
			}else {
				bringData2.setBanner_filepath(bringData2.getBanner_filepath());
			}
		}else {
			bringData2.setBanner_filepath(bringData2.getBanner_filepath());
		}
		
		bringData2.setBoard_event_title(vo.getBoard_event_title());
		bringData2.setBoard_event_content(vo.getBoard_event_content());
		boardservice.updateEvent(bringData2);

		return "redirect:/getEventList.mdo";
	}



	@RequestMapping("/getUpdateEvent.mdo")
	public String getUpdateEvent(EventVO vo, Model model) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		
		System.out.println("글 수정정보 보기 처리");
		model.addAttribute("event", boardservice.getEvent(vo));
		return "/admin/board_event_update.jsp";
	}


	@RequestMapping("/deleteEvent2.mdo")
	public String deleteEvent2(String[] tdArr, EventVO vo) throws IOException, SQLException{
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		AwsS3 awss3 = AwsS3.getInstance();
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				arr2.add(Integer.parseInt(tdArr[a])) ;
				vo.setBoard_event_no(arr2.get(a));

				EventVO bringData = boardservice.getEvent(vo);

				int index = bringData.getBoard_event_filepath().indexOf("/", 20);
				String key = bringData.getBoard_event_filepath().substring(index+1);
				
				int index2 = bringData.getBanner_filepath().indexOf("/", 20);
				String key2 = bringData.getBanner_filepath().substring(index2+1);
				
				awss3.delete(key);
				awss3.delete(key2);

				boardservice.deleteEvent(vo.getBoard_event_no());
			}
		}
		return "getEventList.mdo";
	}


	@RequestMapping("/deleteEvent.mdo") 
	public String deleteEvent(EventVO vo) throws IOException, SQLException{
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		AwsS3 awss3 = AwsS3.getInstance();
		EventVO bringData = boardservice.getEvent(vo);

		int index = bringData.getBoard_event_filepath().indexOf("/", 20);
		String key = bringData.getBoard_event_filepath().substring(index+1);
		
		int index2 = bringData.getBoard_event_filepath().indexOf("/", 20);
		String key2 = bringData.getBoard_event_filepath().substring(index2+1);
		
		awss3.delete(key);
		awss3.delete(key2);

		System.out.println("글 삭제 처리"); 
		boardservice.deleteEvent(bringData); 

		return "redirect:/getEventList.mdo";
	}
}