package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.dao.CustomerDAO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	CustomerDAO dao;
	

	// 회원 정보 수집, 로그인
	@Override
	public CustomerVO getMember(CustomerVO vo) {
		return dao.getUser(vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idCheck(String id){
		return dao.idCheck(id);
		
	}
	
	// 회원가입
	@Override
	public void insertMember(CustomerVO vo) {
		dao.insertUser(vo);
	}
	
	// 비밀번호 암호화 후 저장 (회원가입시 사용)
	@Override
	public void setPasswordEncoding(CustomerVO vo) {
		dao.setPasswordEncoding(vo);
		
	}

	// 비밀번호 대조(로그인시 id를 통해 db에 있는 데이터 호출)
	@Override
	public CustomerVO matchPasswd(CustomerVO vo) {
		return dao.matchPasswd(vo);
	}

	//이용약관 불러오기
	@Override
	public List<TermsVO> getTerms(TermsVO vo) {
		return dao.getTerms(vo);
	}

	// 회원가입할때회원가입버튼누르면회원가입쿠폰쿠폰함에넣어주기
	@Override
	public void insertWelcomeCoupon(CouponListVO mvo) {
		dao.insertWelcomeCoupon(mvo);
	}
	
	// 회원번호로검색해서쿠폰리스트불러오기
	@Override
	public List<CouponListVO> getPCouponList() {
		return dao.getPCouponList();
	}

	// 쿠폰코드로검색해서새로생성되는랜덤쿠폰번호랑중복되는쿠폰코드카운트하기
	@Override
	public CouponListVO couponRandomNum(int num, int num2) {
		return dao.couponRandomNum(num, num2);
	}

}
