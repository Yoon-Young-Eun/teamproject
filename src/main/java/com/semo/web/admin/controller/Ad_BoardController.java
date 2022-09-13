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
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.amazon.s3.AwsS3;


//계시판 관련(Q&A, BOARD, 공지사항, 자주하는 질문)

@Controller
public class Ad_BoardController {

   @Autowired
   private BoardService boardservice;
   public AwsS3 awss3 = AwsS3.getInstance();

   @RequestMapping(value="/getBoardList.mdo", method = RequestMethod.GET)
   public String getBoardList(NoticeVO vo, Model model) {
      System.out.println("글 목록 처리");
      List<NoticeVO> boardList = boardservice.getBoardList(vo);
      model.addAttribute("boardList", boardList);
      return "/admin/board_notice.jsp";
   }

   @RequestMapping("/getBoard.mdo")
   public String getBoard(NoticeVO vo, Model model) {
      System.out.println("글 상세 보기 처리");
      String notice_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/board/";
      NoticeVO vos=boardservice.getBoard(vo);
      String filename = vos.getNotice_filepath().replace(notice_filepath, "");
      System.out.println(vos);
      model.addAttribute("board", vos);
      model.addAttribute("filename", filename);
      return "/admin/getBoard_notice.jsp";
   }

   @RequestMapping(value="/insertBoard.mdo", method=RequestMethod.GET)
   public String insertBoard(NoticeVO vo) {
      System.out.println("글 등록 처리");
      //      boardservice.insertBoard(vo);
      //      return "redirect:/getBoardList.mdo";
      return "/admin/board_notice_write.jsp";
   }

   @RequestMapping("/BoardUpload.mdo")
   public String BoardUpload(NoticeVO vo, MultipartFile NoticeFile) throws IOException, SQLException {
      // aws s3 파일 업로드 처리 */
      InputStream is = NoticeFile.getInputStream();
      String key = NoticeFile.getOriginalFilename();
      String contentType = NoticeFile.getContentType();
      long contentLength = NoticeFile.getSize();

      String bucket = "semoproject/board";

      awss3.upload(is, key, contentType, contentLength, bucket);
      String notice_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/board/" + key;
      vo.setNotice_filepath(notice_filepath);

      boardservice.insertBoard(vo);

      return "redirect:/getBoardList.mdo";
   }

   @RequestMapping(value="/updateBoard.mdo")
   public String updateBoard(NoticeVO vo, MultipartFile uploadImg) throws SQLException, IOException{
      System.out.print(vo);
      System.out.println(uploadImg);
      System.out.println("글 수정 기능 처리");
      NoticeVO bringData = boardservice.getBoard(vo);

      int index = bringData.getNotice_filepath().indexOf("/", 20);
      String key = bringData.getNotice_filepath().substring(index+1);

      if(!uploadImg.getOriginalFilename().equals("")) {
         if(!key.equals("board/" + uploadImg)) {
            awss3.delete(key);

            InputStream is = uploadImg.getInputStream();
            String uploadKey = uploadImg.getOriginalFilename();
            String contentType = uploadImg.getContentType();
            long contentLength = uploadImg.getSize();

            String bucket = "semoproject/board";

            awss3.upload(is, uploadKey, contentType, contentLength, bucket);

            String notice_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/board/" + uploadKey;
            bringData.setNotice_filepath(notice_filepath);
         }else {
            bringData.setNotice_filepath(bringData.getNotice_filepath());
         }
      }else {
         bringData.setNotice_filepath(bringData.getNotice_filepath());
      }
      bringData.setNotice_title(vo.getNotice_title());
      bringData.setNotice_content(vo.getNotice_content());
      boardservice.updateBoard(bringData);

      return "redirect:/getBoardList.mdo";
   }



   @RequestMapping("/getUpdate.mdo")
   public String getUpdate(NoticeVO vo, Model model) {
      System.out.println("글 수정정보 보기 처리");
      String notice_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/board/";
      NoticeVO vos=boardservice.getBoard(vo);
      String filename = vos.getNotice_filepath().replace(notice_filepath, "");
      System.out.println(vos);
      model.addAttribute("board", vos);
      model.addAttribute("filename", filename);
      return "/admin/board_notice_update.jsp";
   }


   @RequestMapping("/deleteBoard2.mdo")
   public String deleteBoard2(String[] tdArr, NoticeVO vo) {
      System.out.println(tdArr[0]);
      System.out.println("글 삭제 처리");

      if(tdArr!=null) {
         List<Integer> arr2 = new ArrayList<Integer>();
         for(int a=0; a<tdArr.length; a++) {
            System.out.println("dhsi");
            arr2.add(Integer.parseInt(tdArr[a])) ;
            System.out.println(arr2.get(a)+"tes");
            vo.setNotice_no(arr2.get(a));

            NoticeVO bringData = boardservice.getBoard(vo);

            int index = bringData.getNotice_filepath().indexOf("/", 20);
            String key = bringData.getNotice_filepath().substring(index+1);
            awss3.delete(key);

            boardservice.deleteBoard(vo.getNotice_no());
         }
      }
      return "getBoardList.mdo";
   }

   // 삭제
   @RequestMapping("/deleteBoard.mdo")
   public String deleteBoard(NoticeVO vo) throws IOException, SQLException{

      NoticeVO bringData = boardservice.getBoard(vo);

      int index = bringData.getNotice_filepath().indexOf("/", 20);
      String key = bringData.getNotice_filepath().substring(index+1);
      awss3.delete(key);

      boardservice.deleteBoard(bringData);

      return "redirect:/getBoardList.mdo";
   }
}