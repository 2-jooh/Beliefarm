package kr.co.beliefarm.scheduling;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.co.beliefarm.service.DiaryService;
import kr.co.beliefarm.util.SerialTest;

@Component
public class Scheduling {
	
	@Autowired
	DiaryService diaryService;
	
	@Scheduled(cron = "0 0 0/1 * * *")
	public void run() {
		System.out.println("run");
		System.out.println("Cron scheduler is running at " + new Date());
		SerialTest serialTest = new SerialTest();
		serialTest.initialize();
		System.out.println("Started");
	}
	
	@Scheduled(cron = "0/20 * * * * *")
	public void run2() {
		
//		System.out.println("측정된 시간 : " + new Date());		
//		SerialTest serialTest = new SerialTest();
//		serialTest.initialize();
//		System.out.println("**********scheduling : "+serialTest.getInputData());
//		String[] inputDataArr = serialTest.getInputDataArr();
//		for(int i=0; i<inputDataArr.length; i++) {
//    			System.out.println(i+" : "+inputDataArr[i]);
//		}
		
//          DayValue dayValue = new DayValue();
//          dayValue.setRegistDate(new Date());
//          dayValue.setProjectId(1);
//          dayValue.setAvgTemp(Double.parseDouble(inputDataArr[0]));
//          dayValue.setAvgHumid(Double.parseDouble(inputDataArr[1]));
//          dayValue.setAvgWater(Double.parseDouble(inputDataArr[2]));
//          dayValue.setAvgPh(Double.parseDouble(inputDataArr[3]));
//          
//          System.out.println("scheduling : "+dayValue);
//          diaryService.renewDayValue(dayValue);
		//System.out.println("Started");
	}
}
