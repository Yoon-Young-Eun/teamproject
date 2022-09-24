package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;

public interface CustomerService {
	
	// 회원 정보 수집, 로그인
	public CustomerVO getMember(CustomerVO vo);

	// 아이디 중복 체크
	public int idCheck(String id);
	
	// 회원 가입
	public void insertMember(CustomerVO vo);
	
	// 비밀번호 암호화 후 저장 (회원가입시 사용)
	public void setPasswordEncoding(CustomerVO vo);
	
	// 비밀번호 대조(로그인시 id를 통해 db에 있는 데이터 호출)
	public CustomerVO matchPasswd(CustomerVO vo);
	
	
	//이용약관불러오깅
	public List<TermsVO> getTerms(TermsVO vo);

	// 회원가입할때회원가입버튼누르면회원가입쿠폰쿠폰함에넣어주기
	public void insertWelcomeCoupon(CouponListVO mvo);
	
	// 회원번호로검색해서쿠폰리스트불러오기
	public List<CouponListVO> getPCouponList();
	
	// 쿠폰코드로검색해서새로생성되는랜덤쿠폰번호랑중복되는쿠폰코드카운트하기
	public CouponListVO couponRandomNum(int num, int num2);
}
