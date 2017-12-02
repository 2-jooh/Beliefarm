package kr.co.beliefarm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beliefarm.dao.UserDao;
import kr.co.beliefarm.service.UserService;
import kr.co.beliefarm.vo.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void insertUser(User user) {
		userDao.insertUser(user);		
	}

	@Override
	public User selectUserByEmail(String userEmail) {		
		return userDao.selectUserByEmail(userEmail);
	}

}
