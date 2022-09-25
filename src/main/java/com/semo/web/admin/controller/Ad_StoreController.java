package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.SiteService;
import com.semo.web.admin.service.StoreService;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.admin.vo.TermsVO;

@Controller
public class Ad_StoreController {
	
	@Autowired
	private StoreService StoreService;
	
	// 매장 등록
	@RequestMapping(value="/insertStore.mdo", method=RequestMethod.GET)
	public String insertStore(StoreVO vo, HttpSession session) {
		
		//세션 유무확인
				AdminVO admin = (AdminVO)session.getAttribute("admin");
				
				if(admin == null) {
						System.out.println("세션 정보가 없습니다.");
						return "redirect:/admin/login.jsp";
				}
				
				
		System.out.println("매장 등록 처리");
		System.out.println(vo);
		
		StoreService.insertStore(vo);
		System.out.println();
		
		return "/StoreList.mdo";
	}
	      
	// 매장 목록
	@RequestMapping(value="/StoreList.mdo", method=RequestMethod.GET)
	public String getStoreList(Model model, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		
		System.out.println("admin storeList()");
		List<StoreVO> StoreList = StoreService.getStoreList();
		model.addAttribute("StoreList", StoreList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(StoreList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/store_storelist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 매장 상세
	@RequestMapping(value="/readStore.mdo", method=RequestMethod.GET)
	public String getReadStore(Model model, StoreVO vo, HttpSession session) {	
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		
		System.out.println("admin readStore()");
		model.addAttribute("StoreInfo", StoreService.getReadStore(vo));
		System.out.println(StoreService.getReadStore(vo));
		return "/admin/store_store.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// 매장 수정 페이지
	@RequestMapping(value="/updateStorePage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, StoreVO vo, HttpSession session) {	
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("updateStorePage()");
		model.addAttribute("StoreInfo", StoreService.getReadStore(vo));
		System.out.println(StoreService.getReadStore(vo));
		return "/admin/store_store_edit.jsp";
	}
	
	
	// 매장 수정
	@RequestMapping(value="/updateStore.mdo", method=RequestMethod.GET)
	public String updateStore(StoreVO vo, Model model, HttpSession session) {

		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		System.out.println("getUpdateStore 메서드 실행");
		StoreService.updateStore(vo); // update는 리턴값 없음
		System.out.println("완료!");
		return "/StoreList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 StoreList.mdo로 보내서 
	}
	
	// 매장 삭제
	@RequestMapping(value="/deleteStore.mdo", method=RequestMethod.GET)
	public String deleteStore(StoreVO vo, Model model, HttpSession session) {
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		System.out.println("deleteStore 메서드 실행");
		StoreService.deleteStore(vo);
		System.out.println("완료!");
		return "/StoreList.mdo";
	}
	
	// 매장 삭제 (체크박스)
	@RequestMapping("/deleteStoreCheck.mdo")
	public String deleteTermsCheck(String[] tdArr, StoreVO vo, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				System.out.println("dhsi");
				arr2.add(Integer.parseInt(tdArr[a])) ;
				System.out.println(arr2.get(a)+"tes");
				vo.setStore_code(arr2.get(a));
				StoreService.deleteStore(vo.getStore_code());
			}
		}
		return "/StoreList.mdo";
	}
}
