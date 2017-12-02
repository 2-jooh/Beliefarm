package kr.co.beliefarm.util;

import java.util.Calendar;
import java.util.Timer;

public class SplitAndSave {
	
	public static String[] splitData(String str) {
		String[] strArr = str.split("/", 4); // /를 기준으로 String 값을 네개의 문자열로 자름 
		
		//DB에 저장 => return Type void로 
		
		return strArr;
	}	
	
	public static void main(String[] args) {
		String[] strArr = splitData("22.00/44.70/78/1.19");
		for(String s : strArr) {
			System.out.println(s);
		}
		HourSearch hourSearch = new HourSearch();
		
		Timer timer = new Timer();
		Calendar date = Calendar.getInstance();
		date.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
		date.set(Calendar.AM_PM, Calendar.PM);
		date.set(Calendar.HOUR, 11);
		date.set(Calendar.MINUTE, 29);
		date.set(Calendar.SECOND, 0);
		date.set(Calendar.MILLISECOND, 0);
		  
		timer.scheduleAtFixedRate(hourSearch, date.getTime(), 1000*60*60);
		  													//1000밀리초 * 60초 * 60분 => 1시간마다 실행 
	}
	
	
}
