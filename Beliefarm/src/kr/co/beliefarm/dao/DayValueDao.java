package kr.co.beliefarm.dao;

import java.util.Date;
import java.util.List;

import kr.co.beliefarm.vo.DayValue;

public interface DayValueDao {
	
	/**
	 * 해당 프로젝트의 하루 측정데이터 가져오기 
	 * @param prjId
	 * @return 프로젝트의 하루 측정데이터들 리스트 
	 */
	public List<DayValue> selectDayValueByPrjId(int prjId);
	
	void insertDayValue(DayValue dayValue);
	DayValue selectDayValueByDate(Date todaysDate);
	void updateDayValue(DayValue dayValue);
	DayValue selectById(int dayValueId);
}
