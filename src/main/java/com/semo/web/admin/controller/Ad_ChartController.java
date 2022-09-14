package com.semo.web.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.semo.web.admin.service.SalesService;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@RestController //json을 리턴하는 method가 있는 경우
public class Ad_ChartController {
	//일반적인 @Controller은 jsp <=> controller 연동할 때 사용하지만
	//RestController는 그 데이터 자체를 받아서 제이슨 형식으로 바꿔서 출력하고 싶을때 사용
	//xml형식보다 json 형식이 더 선호

	@Autowired
	SalesService salesService;
	
	@RequestMapping("/getDoughnutChart.mdo")
	public @ResponseBody List<OrderMtVO> getDoughnutChart(Model model, PagingVO pvo)throws Exception {
		System.out.println("도넛차트 pvo 값 : "+pvo);
			List<OrderMtVO> doughnut = salesService.getDoughnutChart(pvo);
			System.out.println("도넛차트 "+ doughnut);
			return doughnut;
		}

	
	
	@RequestMapping("/getBarChart.mdo")
	public @ResponseBody List<OrderVO> getBarChart(Model model, PagingVO pvo)throws Exception {
		System.out.println("바차트 pvo 값 : "+pvo);
			List<OrderVO> bar = salesService.getBarChart(pvo);
			System.out.println("바차트 출력"+bar);
			return bar;
		}
	}
	
	

