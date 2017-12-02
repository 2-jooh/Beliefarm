package kr.co.beliefarm.dao;

import java.util.List;

import kr.co.beliefarm.vo.SupportProject;

public interface SupportProjectDao {
	
	public void insertSupportProject(SupportProject supportProject);
	
	/**
	 * 해당 리워드id의 후원 객체들 select 해오는 method 
	 * @param rwdId
	 * @return 후원 객체들 
	 * 작성자 : 이주현 
	 */
	public List<SupportProject>selectSprtProjectsByRwdId(int rwdId);
	
	/**
	 * 해당 리워드id의 후원개수 select 해오는 method 
	 * @param rwdId
	 * @return 후원개수 
	 * 작성자 : 이주현 
	 */
	public int selectSupportProjectNumByRwdId(int rwdId);

}
