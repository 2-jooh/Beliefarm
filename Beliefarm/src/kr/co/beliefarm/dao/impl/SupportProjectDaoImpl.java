package kr.co.beliefarm.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beliefarm.dao.SupportProjectDao;
import kr.co.beliefarm.vo.SupportProject;

@Repository
public class SupportProjectDaoImpl implements SupportProjectDao{

	@Autowired
	private SqlSessionTemplate session;

	
	@Override
	public void insertSupportProject(SupportProject supportProject) {
		session.insert("kr.co.beliefarm.config.mapper.supportProjectMapper.insertSupportProject", supportProject);
		
	}
	
	@Override
	public List<SupportProject> selectSprtProjectsByRwdId(int rwdId) {
		return session.selectList("selectSprtProjectsByRwdId", rwdId);
	}

	@Override
	public int selectSupportProjectNumByRwdId(int rwdId) {
		return session.selectOne("kr.co.beliefarm.config.mapper.supportProjectMapper.selectSupportProjectNumByRwdId", rwdId);
	}

}
