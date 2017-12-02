package kr.co.beliefarm.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beliefarm.dao.DiaryDao;
import kr.co.beliefarm.vo.Diary;

@Repository
public class DiaryDaoImpl implements DiaryDao {

	@Autowired
	private SqlSessionTemplate session;

	private String makeSql(String id){
		return "kr.co.beliefarm.config.mapper.diaryMapper."+id;
	}
	
	@Override
	public List<Diary> selectDiariesByPrjId(int prjId) {
		return session.selectList(makeSql("selectDiariesByPrjId"), prjId);
	}

}
