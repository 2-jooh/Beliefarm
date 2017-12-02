package kr.co.beliefarm.service;

import kr.co.beliefarm.vo.User;

public interface UserService {
	
	/**
	 * 한명의 회원을 추가하는 메소드 
	 * @param user : 추가할 회원의 객체, 기존 저장된 회원의 email과 같은 email의 회원은 추가하지 않음 
	 */
	void insertUser(User user);
	
	/**
	 * 이메일로 회원을 찾는 메소드 
	 * @param userEmail
	 * @return
	 */
	User selectUserByEmail(String userEmail);
	
}
