package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.ProductService;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.StoreVO;

@Controller
public class Ad_ProductController {
	
	@Autowired
	private ProductService ProductService;
	
	// 상품 등록
	@RequestMapping(value="/insertProduct.mdo", method=RequestMethod.GET)
	public String insertProduct(ProductVO vo, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		
		System.out.println("상품 등록 처리");
		System.out.println(vo);
		ProductService.insertProduct(vo);
		System.out.println();
		return "/ProductList.mdo";
	}
	
	// 상품 목록
	@RequestMapping(value="/ProductList.mdo", method=RequestMethod.GET)
	public String getProductList(Model model, HttpSession session) {
		
		//세션 유무확인 HttpSession session
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		
		System.out.println("admin couponList()");
		List<ProductVO> ProductList = ProductService.getProductList();
		model.addAttribute("ProductList", ProductList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(ProductList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/product_productlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 상품 상세
	@RequestMapping(value="/readProduct.mdo", method=RequestMethod.GET)
	public String getReadProduct(Model model, ProductVO vo, HttpSession session) {	
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("admin readProduct()");
		model.addAttribute("ProductInfo", ProductService.getReadProduct(vo));
		System.out.println(ProductService.getReadProduct(vo));
		return "/admin/product_product.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// 상품 수정 페이지
	@RequestMapping(value="/updateProductPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, ProductVO vo, HttpSession session ) {	
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("updateProductPage()");
		
		model.addAttribute("ProductInfo", ProductService.getReadProduct(vo));
		System.out.println(ProductService.getReadProduct(vo));
		return "/admin/product_product_edit.jsp";
	}
	
	
	// 상품 수정
	@RequestMapping(value="/updateProduct.mdo", method=RequestMethod.GET)
	public String updateProduct(ProductVO vo, Model model, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		System.out.println("getUpdateProduct 메서드 실행");
		ProductService.updateProduct(vo); // update는 리턴값 없음
		System.out.println("완료!");
		return "/ProductList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 ProductList.mdo로 보내서 
	}
	
	// 상품 삭제
	@RequestMapping(value="/deleteProduct.mdo", method=RequestMethod.GET)
	public String deleteProduct(ProductVO vo, Model model, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(vo);
		System.out.println("deleteProduct 메서드 실행");
		ProductService.deleteProduct(vo);
		System.out.println("완료!");
		return "/ProductList.mdo";
	}
	
	// 상품 삭제 (체크박스)
	@RequestMapping("/deleteProductCheck.mdo")
	public String deleteProductCheck(String[] tdArr, ProductVO vo, HttpSession session) {

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
				vo.setProduct_code(arr2.get(a));
				ProductService.deleteProduct(vo.getProduct_code());
			}
		}
		return "/ProductList.mdo";
	}
	
}
