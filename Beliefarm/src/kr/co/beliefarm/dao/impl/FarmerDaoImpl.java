package kr.co.beliefarm.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beliefarm.dao.FarmerDao;
import kr.co.beliefarm.vo.Farmer;

@Repository
public class FarmerDaoImpl implements FarmerDao {
	
	@Autowired
	private SqlSessionTemplate session;

	private String makeSql(String id){
		return "kr.co.beliefarm.config.mapper.farmerMapper."+id;
	}

	@Override
	public Farmer selectFarmerById(int farmerId) {
		return session.selectOne(makeSql("selectFarmerById"), farmerId);
	}

}
