package kr.co.beliefarm.service;

import java.util.List;

import kr.co.beliefarm.vo.Project;

public interface ProjectService {

	/**
	 * 해당 id의 프로젝트를 선택하는 메소드 
	 * @param id
	 * @return 해당 id의 프로젝트 
	 */
	Project selectProjectById(int id);
	
	/**
	 * 모든 프로젝트 가져오는 메소
	 * @return 프로젝트 리스트 
	 */
	List<Project> selectAllProjects();
	
	
	public void makeQrCode(String projectId, String fileName);
	
}
