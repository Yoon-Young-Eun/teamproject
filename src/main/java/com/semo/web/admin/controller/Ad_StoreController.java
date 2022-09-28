package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.StoreService;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.StoreVO;

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
						return "redirect:/login.mdo";
				}
				
				
		System.out.println("매장 등록 처리");
		System.out.println(vo);
		
		StoreService.insertStore(vo);
		System.out.println();
		
		return "/StoreList.mdo";
	}
	      
	// 매장 목록
	@RequestMapping(value="/StoreList.mdo", method=RequestMethod.GET)
	public String getStoreList(PagingVO pvo, StoreVO vo, Model model, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
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
			      
			       count = StoreService.getArticleCount(pvo); // 조회 개수 (여러 검색 조건등이 포함되어야함)
			       System.out.println("count"+count);
			       List<ProductVO> StoreList = null; //조회 데이터를 담을 List 객체
			       if(count >0) { //조회할 데이터가 하나라도 있다면 메서드 실행
			    	   StoreList= StoreService.getStoreList(pvo);
			    	   System.out.println("StoreList"+StoreList);
			    	  
			       }else { //없으면 빵
			    	   StoreList=Collections.emptyList(); 
			       }
			       
			       if(count >0) {  //45일 경우
			     	  int pageBlock =5;
			     	  int imsi =count % pageSize ==0 ?0:1; 
			     	  int pageCount = count/pageSize +imsi;  
			     	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1;  
			     	  int endPage = startPage + pageBlock -1;  
			     	  //endPage(10)가 pageCount(9) 보다 크면 작동 endPage=pageCount
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
					conditionMap.put("대분류", "product_category_parent");
					conditionMap.put("소분류", "product_category_median");
					conditionMap.put("상품명", "product_name");
					conditionMap.put("상품가격", "product_price");
					/* conditionMap.put("회원상태", "customer_status"); */
					
				   //위에서 얻은 데이터를 model에 담아 보낸다~
			       model.addAttribute("conditionMap", conditionMap);
			       model.addAttribute("StoreList", StoreList);
			       System.out.println("Store 목록 리스트"+StoreList);
			       
		return "/admin/store_storelist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 매장 상세
	@RequestMapping(value="/readStore.mdo", method=RequestMethod.GET)
	public String getReadStore(Model model, StoreVO vo, HttpSession session) {	
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
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
				return "redirect:/login.mdo";
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
				return "redirect:/login.mdo";
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
				return "redirect:/login.mdo";
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
				return "redirect:/login.mdo";
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
