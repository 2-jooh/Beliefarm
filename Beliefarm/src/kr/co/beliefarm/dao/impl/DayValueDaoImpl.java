package kr.co.beliefarm.dao.impl;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beliefarm.dao.DayValueDao;
import kr.co.beliefarm.vo.DayValue;

@Repository
public class DayValueDaoImpl implements DayValueDao {

	@Autowired
	private SqlSessionTemplate session;

	private String makeSql(String id){
		return "kr.co.beliefarm.config.mapper.dayValueMapper."+id;
	}
	
	@Override
	public List<DayValue> selectDayValueByPrjId(int prjId) {
		return session.selectList(makeSql("selectDayValueByPrjId"), prjId);
	}
	

	@Override
	public DayValue selectDayValueByDate(Date todaysDate) {
		System.out.println("dao date"+todaysDate);
		DayValue result = session.selectOne(makeSql("selectDayValueByDate"), todaysDate);
		//System.out.println("dao select : "+result);
		return session.selectOne(makeSql("selectDayValueByDate"), todaysDate);
	}

	@Override
	public void insertDayValue(DayValue dayValue) {
		System.out.println("insertDayValue daoImpl");
		System.out.println(dayValue.toString());
		session.insert(makeSql("insertDayvalue"),dayValue);
	}

	@Override
	public void updateDayValue(DayValue dayValue) {
		System.out.println(dayValue.getRegistDate());
		session.update(makeSql("updateDayValue"), dayValue);
	}

	@Override
	public DayValue selectById(int dayValueId) {
		
		return session.selectOne(makeSql("selectById"), dayValueId);
	}


}
