package kr.co.beliefarm.service.impl;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beliefarm.dao.DayValueDao;
import kr.co.beliefarm.dao.impl.DayValueDaoImpl;
import kr.co.beliefarm.service.DayValueService;
import kr.co.beliefarm.vo.DayValue;

@Service
public class DayValueServiceImpl implements DayValueService {
	
	@Autowired
	DayValueDao dayValueDao;
	static int count;
	
	@Override
	public List<DayValue> selectDayValueByPrjId(int prjId) {
		return dayValueDao.selectDayValueByPrjId(prjId);
	}
	
	@Override
	public void insertDayValue(double temp, double humid) {
		System.out.println("diaryService insert"+temp+" "+humid );
		//diaryDao.insertDayValue(temp, humid);
	}

	@Override
	public void renewDayValue(DayValue dayValue) throws ParseException{
				
		System.out.println("dayValueService : "+dayValue.toString());		
		Date todaysDate = dayValue.getRegistDate();
		
		/* 시분초 없애기 위한 작업*/
		//SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd"); // Date -> String	
		//String tmpTodaysDate = transFormat.format(todaysDate);
		//System.out.println(tmpTodaysDate);		
		//SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy-MM-dd"); //String -> Date
		//todaysDate = transFormat2.parse(tmpTodaysDate); 
		//System.out.println(todaysDate);		
		
		
		DayValueDao _dayValueDao = new DayValueDaoImpl(); 
		DayValue _dayValue = _dayValueDao.selectDayValueByDate(todaysDate);
		//System.out.println("셀렉해온 데이벨류"+_dayValue);
		
		if( _dayValue == null) {  //DayValue 테이블에 이미 DayValue값이 있는지 체크한 후 없으면 새로 넣고 , 있으면 avg값들과 estmCount를 갱신한다.
			System.out.println("새로 값을 넣습니다.");
			dayValue.setEstmCount(1);
			dayValueDao.insertDayValue(dayValue);
			 
		}
		else {
			System.out.println("이미 존재하니 갱신합니다.");
			System.out.println("_dayValue "+_dayValue.toString());
			int estmCount = _dayValue.getEstmCount()+1;
			double rnAvgHumid;
			double rnAvgWater;
			double rnAvgTemp; 
			double rnAvgPh;
			rnAvgHumid = (dayValue.getAvgHumid()+_dayValue.getAvgHumid()) / estmCount;
			rnAvgWater = (dayValue.getAvgWater()+_dayValue.getAvgWater()) / estmCount;
			rnAvgTemp = (dayValue.getAvgTemp()+_dayValue.getAvgTemp()) / estmCount;
			rnAvgPh = (dayValue.getAvgPh()+_dayValue.getAvgPh()) / estmCount;
			
			System.out.println("rn "+rnAvgHumid+" "+rnAvgWater+" "+rnAvgTemp+" "+rnAvgPh);
			
			dayValue.setEstmCount(estmCount);
			dayValue.setAvgHumid(rnAvgHumid);
			dayValue.setAvgPh(rnAvgPh);
			dayValue.setAvgTemp(rnAvgTemp);
			dayValue.setAvgWater(rnAvgWater);
			
			dayValueDao.updateDayValue(dayValue);
		}

	}

	@Override
	public DayValue selectByDate(Date registDate){
		return dayValueDao.selectDayValueByDate(registDate);		
	}

	@Override
	public DayValue selectById(int dayValueId) {
		
		return null;
	}

	@Override
	public void renewDayValueFast(DayValue dayValue) {
		count++;
		
		System.out.println(count);
		Date todaysDate;
		
		if(count==1) {
			/*
			 Date todaysDate = dayValue.getRegistDate();
			diaryDao.insertDayValue(dayValue);
			*/
		}
		else {
			/*
			
			
			DayValue _dayValue = diaryDao.selectDayValue(todaysDate);
			int estmCount = _dayValue.getEstmCount()+1;
			double rnAvgHumid;
			double rnAvgWater;
			double rnAvgTemp; 
			double rnAvgPh;
			rnAvgHumid = (dayValue.getAvgHumid()+_dayValue.getAvgHumid()) / estmCount;
			rnAvgWater = (dayValue.getAvgWater()+_dayValue.getAvgWater()) / estmCount;
			rnAvgTemp = (dayValue.getAvgTemp()+_dayValue.getAvgTemp()) / estmCount;
			rnAvgPh = (dayValue.getAvgPh()+_dayValue.getAvgPh()) / estmCount;
			
			System.out.println("rn "+rnAvgHumid+" "+rnAvgWater+" "+rnAvgTemp+" "+rnAvgPh);
			
			dayValue.setEstmCount(estmCount);
			dayValue.setAvgHumid(rnAvgHumid);
			dayValue.setAvgPh(rnAvgPh);
			dayValue.setAvgTemp(rnAvgTemp);
			dayValue.setAvgWater(rnAvgWater);
			
			diaryDao.updateDayValue(dayValue);
			*/
			if(count==24) {
				count=0;
				todaysDate = new Date(System.currentTimeMillis()+ (1000*60*60*24*+1));
			}
			
		}		
	}

	@Override
	public DayValue test(Date date){
		return dayValueDao.selectDayValueByDate(date);
	}
		
	
	
}
