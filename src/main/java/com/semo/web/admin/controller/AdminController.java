package com.semo.web.admin.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.AdminService;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.CustomerVO;

@Controller
public class AdminController {
	// 영은 : 로그인, 매니저 관리
	
	@Autowired
	AdminService adminservice;
	
	
	//login.jsp 에서 로그인 버튼시(login.mdo) 작동
	@RequestMapping(value="/login.mdo", method = RequestMethod.POST)
	public String login(AdminVO vo, HttpSession session) {
		System.out.println(vo); //값이 컨트롤러로 잘 보내지는 지 확인
		System.out.println("어드민 login() 까꿍! ");
		
		//세션 유지시간 설정 
		session.setMaxInactiveInterval(1800); // 1800 = 60s*30 (30분)
		
		AdminVO user = adminservice.getAdmin(vo);
		System.out.println(user); //쿼리문의 결과가 어떻게 나왔는지 확인
		
		if(user.getAdmin_id() != null ) {
			System.out.println("로그인 성공");
			session.setAttribute("name", user.getAdmin_no()); //나중에 로그인 후 우측 상단에 OO님 환영합니다로 불러올 데이터
			return "/admin/index.jsp";                        // jsp 페이지 안에 ${name} 이라고 쓰면 됨
		}else {
			System.out.println("로그인 실패");
			return "/admin/login.jsp";
		}	
	}
	
	// 로그인 후 좌측 메뉴에서 화원관리 -> 메니저 관리 클릭시 (staffList.mdo)실행 
	@RequestMapping(value="/staffList.mdo", method=RequestMethod.GET)
	public String getMemberList(Model model, AdminVO vo) {
		System.out.println("어드민 memberList() 까꿍! ");
		List<AdminVO> adminList = adminservice.getAdminList(); // 결과값이 여러 행이기 때문에 리턴값이 List<AdminVO> 이어야 함
		model.addAttribute("adminList", adminList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(adminList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/memberstaff.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${adminList.컬럼명}
	}
	
	
	// 매니저화면(memberstaff.jsp) 에서 우측 하단 등록버튼을 누른 후 입력값을 넣고 저장을 누르면(insertAdmin.mdo) 실행
	@RequestMapping(value="/insertAdmin.mdo", method=RequestMethod.GET)
	public String joinAdmin(AdminVO vo) {
		System.out.println(vo);
		System.out.println("어드민 insertAdmin() 까꿍! ");
		adminservice.setAdmin(vo); //insert는 리턴값이 없다.
		return "staffList.mdo"; //저장 후, 관리자목록 화면으로 이동 : 이동과정에서 db에서 데이터를 받아와야 되서 staffList.mdo 실행
	}

	// 관리자 테이블에서 아이디를 클릭하면 해당 관리자의 상세정보를 볼 수 있음 readStaff.mdo을 통해 해당페이지 선택한 회원의 정보를 가지고 감
	@RequestMapping(value="/readStaff.mdo", method=RequestMethod.GET)
	public String getReadStaff(Model model, AdminVO vo) {	
		System.out.println("어드민 getBoard() 까꿍! ");
		model.addAttribute("adminInfo", adminservice.getReadStaff(vo)); // 해당 페이지에서는 ${adminInfo.admin_id} 와같은 방법으로 데이터 출력
		System.out.println(adminservice.getReadStaff(vo));
		return "/admin/member_staff_getboard.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// member_staff_getboard.jsp화면에서 수정버튼을 누르게 되면 member_staff_edit.jsp페이지로 가야되는데 이미 입력한 값을 가지고 가야되서 editPage.mdo통해 값을 가지고 감
	@RequestMapping(value="/editPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, AdminVO vo) {	
		System.out.println("어드민 UpdatePage() 까꿍! ");
		
		model.addAttribute("adminInfo", adminservice.getReadStaff(vo));
		System.out.println(adminservice.getReadStaff(vo));
		return "/admin/member_staff_edit.jsp";
	}
	
	
	//member_staff_edit.jsp 페이지에서 수정 정보를 입력하고 저장버튼을 누르면 updatestaff.mdo 실행
	@RequestMapping(value="/updatestaff.mdo", method=RequestMethod.GET)
	public String updateStaff(AdminVO vo, Model model) {
		System.out.println(vo);
		System.out.println("getUpdateStaff 메서드 실행");
		adminservice.updateStaff(vo); // update는 리턴값 없음
		System.out.println("완료!");
		return "/staffList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 staffList.mdo로 보내서 
	}
	
	
	// 테이블의 아이디 클릭하면 수정 버튼 외 삭제 버튼도 있는데 눌렀을때 발동,  (아직 체크박스를 눌러 삭제하는 기능은 구현 못함)
	@RequestMapping(value="/deleteStaff.mdo", method=RequestMethod.GET)
	public String deleteStaff(AdminVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteStaff 메서드 실행");
		adminservice.deleteStaff(vo);
		System.out.println("완료!");
		return "/staffList.mdo";
	}
	
	// 테이블 selected된 행을 삭제하는 컨트롤러
	@RequestMapping("/selectDelete.mdo")
	public String selectedBoard(String[] num, AdminVO vo) {
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
			}
		}
		return "staffList.mdo";
	}	
}
