package kr.co.beliefarm.dao;

import java.util.List;

import kr.co.beliefarm.vo.Diary;

public interface DiaryDao {
	
	/**
	 * 프로젝트 아이디로 프로젝트의 농사일기 조회
	 * @param prjId
	 * @return 해당 프로젝트의 농사일기들 
	 */
	List<Diary> selectDiariesByPrjId(int prjId);
	

}
