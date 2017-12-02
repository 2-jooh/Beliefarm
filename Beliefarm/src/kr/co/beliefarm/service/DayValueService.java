package kr.co.beliefarm.service;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import kr.co.beliefarm.vo.DayValue;

public interface DayValueService {
	
	/**
	 * 해당 프로젝트의 하루 측정데이터 가져오기 
	 * @param prjId
	 * @return 프로젝트의 하루 측정데이터들 리스트 
	 */
	public List<DayValue> selectDayValueByPrjId(int prjId);
	
	void insertDayValue(double d, double e);
	void renewDayValue(DayValue dayValue) throws ParseException;
	DayValue selectByDate(Date registDate);
	DayValue selectById(int dayValueId);
	void renewDayValueFast(DayValue dayValue);
	
	DayValue test(Date date);
	
}
