package com.semo.web.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.ProductService;
import com.semo.web.admin.vo.ProductVO;

@Controller
public class Ad_ProductController {
	// 상품등록
	
	@Autowired
	private ProductService ProductService;
	
	// 등록
	@RequestMapping(value="/insertProduct.mdo", method=RequestMethod.GET)
	public String insertProduct(ProductVO vo) {
		System.out.println("상품 등록 처리");
		System.out.println(vo);
		ProductService.insertProduct(vo);
		System.out.println();
		return "/ProductList.mdo";
	}
	
	// 목록
		@RequestMapping(value="/ProductList.mdo", method=RequestMethod.GET)
		public String getProductList(Model model) {
			System.out.println("admin couponList()");
			List<ProductVO> ProductList = ProductService.getProductList();
			model.addAttribute("ProductList", ProductList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
			System.out.println(ProductList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
			return "/admin/itemlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
		}
	
	// 상세
	@RequestMapping(value="/readProduct.mdo", method=RequestMethod.GET)
	public String getReadProduct(Model model, ProductVO vo) {	
		System.out.println("admin readProduct()");
		model.addAttribute("ProductInfo", ProductService.getReadProduct(vo));
		System.out.println(ProductService.getReadProduct(vo));
		return "/admin/item_product.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// 수정 페이지
		@RequestMapping(value="/updateProductPage.mdo", method=RequestMethod.GET)
		public String editPage(Model model, ProductVO vo) {	
			System.out.println("updateProductPage()");
			
			model.addAttribute("ProductInfo", ProductService.getReadProduct(vo));
			System.out.println(ProductService.getReadProduct(vo));
			return "/admin/item_edit.jsp";
		}
		
		
		// 수정
		@RequestMapping(value="/updateProduct.mdo", method=RequestMethod.GET)
		public String updateProduct(ProductVO vo, Model model) {
			System.out.println(vo);
			System.out.println("getUpdateProduct 메서드 실행");
			ProductService.updateProduct(vo); // update는 리턴값 없음
			System.out.println("완료!");
			return "/ProductList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 ProductList.mdo로 보내서 
		}
		
		// 삭제 (아직 체크박스를 눌러 삭제하는 기능은 구현 못함)
		@RequestMapping(value="/deleteProduct.mdo", method=RequestMethod.GET)
		public String deleteProduct(ProductVO vo, Model model) {
			System.out.println(vo);
			System.out.println("deleteProduct 메서드 실행");
			ProductService.deleteProduct(vo);
			System.out.println("완료!");
			return "/ProductList.mdo";
		}
	
}
