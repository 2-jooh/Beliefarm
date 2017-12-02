package kr.co.beliefarm.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beliefarm.dao.UserDao;
import kr.co.beliefarm.vo.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSessionTemplate session;

	private String makeSql(String id){
		return "kr.co.beliefarm.config.mapper.userMapper."+id;
	}
	
	@Override
	public int insertUser(User user) {
		return session.insert(makeSql("insertUser"), user);
	}

	@Override
	public User selectUserByEmail(String userEmail) {
		User user = session.selectOne(makeSql("selectUserByEmail"), userEmail);
		System.out.println("dao: "+user);
		return user;
	}

}
