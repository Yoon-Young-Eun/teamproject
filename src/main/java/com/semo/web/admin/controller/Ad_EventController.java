package com.semo.web.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.amazon.s3.AwsS3;

@Controller
public class Ad_EventController {
	
	@Autowired
	private BoardService boardservice;
	public AwsS3 awss3 = AwsS3.getInstance();

	@RequestMapping(value="/getEventList.mdo", method = RequestMethod.GET)
	public String getEventList(EventVO vo, Model model) {
		System.out.println("글 목록 처리");
		List<EventVO> EventList = boardservice.getEventList(vo);
		model.addAttribute("EventList", EventList);
		return "/admin/board_event.jsp";
	}

	@RequestMapping("/getEvent.mdo")
	   public String getEvent(EventVO vo, Model model) {
	      System.out.println("글 상세 보기 처리");
	      String event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/";
	      EventVO vos=boardservice.getEvent(vo);
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
	public String EventUpload(EventVO vo, MultipartFile EventFile) throws IOException, SQLException {
		// aws s3 파일 업로드 처리 */
		InputStream is = EventFile.getInputStream();
		String key = EventFile.getOriginalFilename();
		String contentType = EventFile.getContentType();
		long contentLength = EventFile.getSize();

		String bucket = "semoproject/event";

		awss3.upload(is, key, contentType, contentLength, bucket);
		String event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/" + key;
		vo.setBoard_event_filepath(event_filepath);

		boardservice.insertEvent(vo);

		return "redirect:/getEventList.mdo";
	}

	@RequestMapping(value="/updateEvent.mdo")
	public String updateEvent(EventVO vo, MultipartFile uploadImg) throws SQLException, IOException{
		System.out.print(vo);
		System.out.println(uploadImg);
		System.out.println("글 수정 기능 처리");
		EventVO bringData = boardservice.getEvent(vo);

		int index = bringData.getBoard_event_filepath().indexOf("/", 20);
		String key = bringData.getBoard_event_filepath().substring(index+1);

		if(!uploadImg.getOriginalFilename().equals("")) {
			if(!key.equals("event/" + uploadImg)) {
				awss3.delete(key);

				InputStream is = uploadImg.getInputStream();
				String uploadKey = uploadImg.getOriginalFilename();
				String contentType = uploadImg.getContentType();
				long contentLength = uploadImg.getSize();

				String bucket = "semoproject/event";

				awss3.upload(is, uploadKey, contentType, contentLength, bucket);

				String board_event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/" + uploadKey;
				bringData.setBoard_event_filepath(board_event_filepath);
			}else {
				bringData.setBoard_event_filepath(bringData.getBoard_event_filepath());
			}
		}else {
			bringData.setBoard_event_filepath(bringData.getBoard_event_filepath());
		}
		bringData.setBoard_event_title(vo.getBoard_event_title());
		bringData.setBoard_event_content(vo.getBoard_event_content());
		boardservice.updateEvent(bringData);

		return "redirect:/getEventList.mdo";
	}



	@RequestMapping("/getUpdateEvent.mdo")
	public String getUpdateEvent(EventVO vo, Model model) {
		System.out.println("글 수정정보 보기 처리");
		model.addAttribute("event", boardservice.getEvent(vo));
		return "/admin/board_event_update.jsp";
	}


	@RequestMapping("/deleteEvent2.mdo")
	public String deleteEvent2(String[] tdArr, EventVO vo) {
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				arr2.add(Integer.parseInt(tdArr[a])) ;
				vo.setBoard_event_no(arr2.get(a));
				boardservice.deleteEvent(vo.getBoard_event_no());
			}
		}
		return "getEventList.mdo";
	}


	@RequestMapping("/deleteEvent.mdo") 
	public String deleteEvent(EventVO vo) {
		System.out.println("글 삭제 처리"); 
		boardservice.deleteEvent(vo); 
		return "getEventList.mdo"; }
}