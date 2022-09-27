package com.semo.web.admin.controller;



import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.admin.service.AdminService;
import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.EstimateVO;

@Controller
public class AdminController {
	// 영은 : 로그인, 매니저 관리
	
	@Autowired
	AdminService adminservice;
	
	@Autowired
	BCryptPasswordEncoder encoder; 
	
	
	@RequestMapping("/login.mdo")
	public String logon() {
		
		return "/admin/login.jsp";
	}
	
	//login.jsp 에서 로그인 버튼시(login.mdo) 작동
	@RequestMapping(value="/logon.mdo", method = RequestMethod.POST)
	public String login(AdminVO vo, HttpSession session) {
		System.out.println(vo); //값이 컨트롤러로 잘 보내지는 지 확인
		System.out.println("어드민 login() 까꿍! ");
		
//		
//		session.setMaxInactiveInterval(1800); // 1800 = 60s*30 (30분)
		
		if(adminservice.getAdmin(vo) == null) {
			System.out.println("유효하지 않은 아이디 입니다.");
			return "/admin/login.jsp";
		}
		
		AdminVO user = adminservice.getAdmin(vo); 
		System.out.println(user); //쿼리문의 결과가 어떻게 나왔는지 확인
		
		if(encoder.matches(vo.getAdmin_passwd(), user.getAdmin_passwd())) {
			System.out.println("로그인 성공");
			session.setAttribute("admin", user); //나중에 로그인 후 우측 상단에 OO님 환영합니다로 불러올 데이터
			return "/index.mdo";   
		}else {
			System.out.println("로그인 실패");
			return "/admin/login.jsp";
		}	
	}
	
	
	@RequestMapping(value="/idCheck.mdo")
	@ResponseBody
	public int idCheck(String id) {
		System.out.println("id"+id);
		AdminVO vo = new AdminVO();
		System.out.println("vo"+vo);
		vo.setAdmin_id(id);
		int check = 0;

		if(adminservice.getAdmin(vo) == null) {
			check = 1;
		}
		System.out.println("Y"+check);
		return check;
	}
	
	@RequestMapping(value="/register.mdo")
	public String adminRegister(AdminVO vo) {
		System.out.println("adminRegister 메서드");
		System.out.println("회원가입 입력정보"+vo);
		
		AdminVO vo2 = vo;
		vo2.setAdmin_passwd(encoder.encode(vo.getAdmin_passwd()));
		
		adminservice.setAdmin(vo2);
		
		return"/admin/register_success.jsp";
		
	}

	 
	@RequestMapping(value="/logout.mdo")
	public String logout(HttpSession session, AdminVO vo) {
		
		
		session.setAttribute("admin", null); 
		session.invalidate();
		
		return "/admin/login.jsp";
	}
	
	//매니저 조회 리스트 (staffList.mdo)실행 
		@RequestMapping("/staffList.mdo")
		public String getMemberList(HttpSession session, PagingVO pvo, AdminVO vo, Model model) {
			System.out.println("매니저 리스트");
			
			AdminVO admin = (AdminVO)session.getAttribute("admin");
			
			if(admin == null) {
 				System.out.println("세션 정보가 없습니다.");
 				return "redirect:/admin/login.jsp";
			}
			
			System.out.println(pvo);
			
			//검색조건을 가지고 페이지 이동을 하기 위한 장치
			//페이징 버튼에  href = &searchKeyword=${search.searchKeyword} 등을 하기위함 

				model.addAttribute("search",pvo);
		
			// 페이징 처리
		      if (pvo.getPageNum() == null) { //처음엔 값이 없으니 null
		    	  pvo.setPageNum("1"); //1번으로 설정
		       }
		      
		      System.out.println(pvo.getSelectPage());
		      if (pvo.getSelectPage()==null ) {  
		    	  pvo.setSelectPage("5"); //게시글 보이는 개수를 설정을 안하면 5(테이블에서 조회개수 변경을 위한 작업)
		      }
		      //pageNum 지금내가 몇 페이지에 이는지 확인하기
		      //curruntPage 현재 내가 위치하고있는 페이지
		      //startRow 현재 화면에서의 첫번째 게시물 
		      //endRow현재 화면에서의 마지막 게시물 행
		      //count 전체 게시글 수
		 
		       int pageSize = Integer.parseInt(pvo.getSelectPage()); //int로 형변환
		       int currentPage = Integer.parseInt(pvo.getPageNum()); // 현재 내가 위치하고있는 페이지
		       pvo.setStartRow((currentPage -1)* pageSize +1); //현재 화면에서의 첫번째 게시물
		       pvo.setEndRow(currentPage * pageSize); //현재 화면에서의 마지막 게시물 행
		       int count =0; 	 
		      
		       count = adminservice.getArticleCount(pvo); // 조회 개수 (여러 검색 조건등이 포함되어야함)
		       System.out.println("count"+count);
		       List<AdminVO> adminList = null; //조회 데이터를 담을 List 객체
		       if(count >0) { //조회할 데이터가 하나라도 있다면 메서드 실행
		    	   adminList= adminservice.getAdminList(pvo);
		    	   System.out.println("adminList"+adminList);
		    	  
		       }else { //없으면 빵
		    	   adminList=Collections.emptyList(); 
		       }
		       
				  if(count >0) { //조회된 데이터 개수가 0보다 크면 if문 실행
			    	  int pageBlock =5;
			    	  int imsi =count % pageSize ==0 ?0:1; //전체 페이지 게시물을 pageSize로 나눴을때 오류를 대비한 나머지구하는식
			    	  int pageCount = count/pageSize +imsi; //페이징 넘버 개수
			    	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1; //현재 보이는 페이징 시작번호 
			    	  int endPage = startPage + pageBlock -1; //현재 보이는 페이징 끝번호
			    	  
			    	  // 추가 if문 : endPage(예:10)이 pageCount(예:9)보다 클경우 endPage의 값은 9로 한다!
			    	  if(endPage > pageCount) {
			    		  endPage = pageCount;
			    	  }
			    	  
			    	  model.addAttribute("pageCount",pageCount);
			    	  model.addAttribute("startPage",startPage);
			    	  model.addAttribute("endPage",endPage);
			    	  model.addAttribute("pageBlock",pageBlock);
			          model.addAttribute("count", count);
			    	  }
		       
		       //검색을 적용할 타이틀을 정하는 제목(jsp에서 받아서 작업할거임)
				Map<String, String> conditionMap = new HashMap<String, String>();
				conditionMap.put("이름", "admin_name");
				conditionMap.put("아이디", "admin_id");
				/* conditionMap.put("회원상태", "customer_status"); */
				
			   //위에서 얻은 데이터를 model에 담아 보낸다~
		       model.addAttribute("conditionMap", conditionMap);
		       model.addAttribute("adminList", adminList);
		       System.out.println("어드민 목록 리스트"+adminList);	       
		       
			return "/admin/memberstaff.jsp";
		}	

	

	// 매니저화면(memberstaff.jsp) 에서 우측 하단 등록버튼을 누른 후 입력값을 넣고 저장을 누르면(insertAdmin.mdo) 실행
	@RequestMapping(value="/insertAdmin.mdo")
	public String joinAdmin(AdminVO vo, HttpSession session) {
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		System.out.println("어드민 insertAdmin() 까꿍! ");
		
		
		AdminVO vo2 = vo;
		vo2.setAdmin_passwd(encoder.encode(vo.getAdmin_passwd()));
		
		adminservice.setAdmin(vo2); //insert는 리턴값이 없다.
		return "redirect:staffList.mdo"; //저장 후, 관리자목록 화면으로 이동 : 이동과정에서 db에서 데이터를 받아와야 되서 staffList.mdo 실행
	}

	// 관리자 테이블에서 아이디를 클릭하면 해당 관리자의 상세정보를 볼 수 있음 readStaff.mdo을 통해 해당페이지 선택한 회원의 정보를 가지고 감
	@RequestMapping(value="/readStaff.mdo", method=RequestMethod.GET)
	public String getReadStaff(Model model, AdminVO vo, HttpSession session) {
		
		//세션 유무확인 HttpSession session
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("어드민 getBoard() 까꿍! ");
		model.addAttribute("adminInfo", adminservice.getReadStaff(vo)); // 해당 페이지에서는 ${adminInfo.admin_id} 와같은 방법으로 데이터 출력
		System.out.println(adminservice.getReadStaff(vo));
		return "/admin/member_staff_getboard.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// member_staff_getboard.jsp화면에서 수정버튼을 누르게 되면 member_staff_edit.jsp페이지로 가야되는데 이미 입력한 값을 가지고 가야되서 editPage.mdo통해 값을 가지고 감
	@RequestMapping(value="/editPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, AdminVO vo, HttpSession session) {	
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("어드민 UpdatePage() 까꿍! ");
		
		model.addAttribute("adminInfo", adminservice.getReadStaff(vo));
		System.out.println(adminservice.getReadStaff(vo));
		return "/admin/member_staff_edit.jsp";
	}
	
	
	//member_staff_edit.jsp 페이지에서 수정 정보를 입력하고 저장버튼을 누르면 updatestaff.mdo 실행
	@RequestMapping(value="/updatestaff.mdo", method=RequestMethod.POST)
	public String updateStaff(AdminVO vo, Model model, HttpSession session) {
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		
		AdminVO vo2= vo;
		vo2.setAdmin_passwd(encoder.encode(vo.getAdmin_passwd()));
		
		//회원정보를 수정했기 때문에 Session을 다시 재설정해야 한다.
		session.setAttribute("admin", vo2);

		System.out.println("getUpdateStaff 메서드 실행");
		adminservice.updateStaff(vo2); // update는 리턴값 없음
		System.out.println("완료!");
		return "/staffList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 staffList.mdo로 보내서 
	}
	
	
	// 테이블의 아이디 클릭하면 수정 버튼 외 삭제 버튼도 있는데 눌렀을때 발동,  (아직 체크박스를 눌러 삭제하는 기능은 구현 못함)
	@RequestMapping(value="/deleteStaff.mdo", method=RequestMethod.GET)
	public String deleteStaff(AdminVO vo, Model model, HttpSession session) {
		
		//세션 유무확인 HttpSession session
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		System.out.println("deleteStaff 메서드 실행");
		adminservice.deleteStaff(vo);
		System.out.println("완료!");
		return "/staffList.mdo";
	}
	
	// 테이블 selected된 행을 삭제하는 컨트롤러
	@RequestMapping("/selectDelete.mdo")
	public String selectedBoard(String[] num, AdminVO vo, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(num[0]);
		System.out.println("selected 삭제 처리");

		if(num!=null) {
			List<Integer> arr = new ArrayList<Integer>();
			for(int a=0; a<num.length; a++) {
				System.out.println("글삭제 for문 실행");
				arr.add(Integer.parseInt(num[a])) ;
				System.out.println(arr.get(a)+"for문 int");
				vo.setAdmin_no(arr.get(a));
				adminservice.selectedDelete(vo.getAdmin_no());
				System.out.println(vo.getAdmin_no());
				//계정 삭제와 함께 세션정보를 함께 삭제해야 한다.
				session.setAttribute("admin", null); 
				session.invalidate();
			}
		}
		return "staffList.mdo";
	}	
	
	
	
	
	
	
	
	
}
