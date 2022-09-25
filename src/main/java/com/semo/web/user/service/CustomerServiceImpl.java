package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.dao.CustomerDAO;
import com.semo.web.user.dao.InfoDAO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	CustomerDAO dao;
	@Autowired
	CustomerDAO CustomerDAO;
	@Autowired
	InfoDAO InfoDAO;

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
	public void insertWelcomeCoupon(CouponListVO mvo, CouponVO vo,CustomerVO cvo) {
		
		int randomNumber = (int)(Math.random() * 99999999 - 10000000) + 1; // 8자리 난수생성
		mvo.setCoupon_code(randomNumber);
		int mycode = dao.couponRandomNum(mvo);
		CustomerVO cvo2 = CustomerDAO.matchPasswd(cvo);
		System.out.println("회원넘버?"+cvo2);
		int no = cvo2.getCustomer_no();
		System.out.println("cvo.getCustomer_no()          "+no);
		
		while(mycode != 0) {
			randomNumber = (int)(Math.random() * 99999999 - 10000000) + 1; // 8자리 난수생성
			mvo.setCoupon_code(randomNumber);
			mycode = dao.couponRandomNum(mvo);
		}
		mvo.setCustomer_no(no);
		System.out.println("쿠폰테이블에번호?"+mvo.getCustomer_no());
		dao.insertWelcomeCoupon(mvo);
		System.out.println("쿠폰매니지먼트VO:    " + mvo);
	}
	
	// 회원번호로검색해서쿠폰리스트불러오기
	@Override
	public List<CouponListVO> getPCouponList() {
		return dao.getPCouponList();
	}

	// 쿠폰코드로검색해서새로생성되는랜덤쿠폰번호랑중복되는쿠폰코드카운트하기
	@Override
	public int couponRandomNum(CouponListVO mvo) {
		return dao.couponRandomNum(mvo);
	}

}
