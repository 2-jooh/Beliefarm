package kr.co.beliefarm.dao;

import java.util.List;

import kr.co.beliefarm.vo.Project;

public interface ProjectDao {

	/**
	 * 해당 id로 프로젝트 찾는 method
	 * @param id
	 * @retun 찾은 프로젝트 
	 */
	Project selectProjectById(int id);
	
	/**
	 * 모든 프로젝트 가져오는 method
	 * @return 모든 프로젝트 리스
	 */
	List<Project> selectAllProjects();
}
