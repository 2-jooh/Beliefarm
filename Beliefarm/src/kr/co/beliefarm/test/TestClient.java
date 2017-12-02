package kr.co.beliefarm.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import kr.co.beliefarm.service.DayValueService;


public class TestClient {

	public static void main(String[] args) throws ParseException {

		//TODO ApplicationContext 객체 생성
		ApplicationContext container = new ClassPathXmlApplicationContext("kr/co/beliefarm/config/spring/model-context.xml");
		
		//TODO Spring 컨테이너로 부터 MemberService bean 가져오기
//		UserService service = (UserService)container.getBean("userServiceImpl");		
//		service.insertUser(new User(0, "test@gmail.com", "12345678", "0109119", "이주"));
		
//		ProjectService service = (ProjectService)container.getBean("projectServiceImpl");
//		System.out.println(service2.selectProjectById(1));
//		System.out.println(service2.selectAllProjects());
		
//		FarmerService service = (FarmerService)container.getBean("farmerServiceImpl");	
//		System.out.println(service.selectFarmerById(1));
		
//		DiaryService service = (DiaryService)container.getBean("diaryServiceImpl");
//		List<Diary> diaries = service.selectDiariesByPrjId(1);
//		for(int i=0; i<diaries.size(); i++) {
//			System.out.println(diaries.get(i));
//		}
//		
		DayValueService service = (DayValueService)container.getBean("dayValueServiceImpl");
		
		String from = "2017-11-29";
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date to = transFormat.parse(from);
		System.out.println(to);
		System.out.println(service.test(to));
		
		//System.out.println(service.test(new Date()));
		
	}

}
