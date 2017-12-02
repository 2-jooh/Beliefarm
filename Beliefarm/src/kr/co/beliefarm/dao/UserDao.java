package kr.co.beliefarm.dao;

import kr.co.beliefarm.vo.User;

public interface UserDao {
	
	/**
	 * 회원 추가 
	 * @param user
	 * @return
	 * 작성자 : 이주현 
	 */
	int insertUser(User user);
	
	/**
	 * email로 회원찾기 
	 * @param userEmail
	 * @return user 
	 * 작성자 : 이주현 
	 */
	User selectUserByEmail(String userEmail);
	
}
