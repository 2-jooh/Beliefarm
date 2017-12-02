package kr.co.beliefarm.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.beliefarm.dao.ProjectDao;
import kr.co.beliefarm.vo.Project;

@Repository
public class ProjectDaoImpl implements ProjectDao {
	
	@Autowired
	private SqlSessionTemplate session;

	private String makeSql(String id){
		return "kr.co.beliefarm.config.mapper.projectMapper."+id;
	}
	
	@Override
	public Project selectProjectById(int id) {
		return session.selectOne(makeSql("selectProjectById"), id);
	}

	@Override
	public List<Project> selectAllProjects() {
		return session.selectList(makeSql("selectAllProjects"));
	}

}
