package kr.co.beliefarm.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.beliefarm.service.DiaryService;
import kr.co.beliefarm.service.FarmerService;
import kr.co.beliefarm.service.ProjectService;
import kr.co.beliefarm.service.RewardService;
import kr.co.beliefarm.service.SupportProjectService;
import kr.co.beliefarm.vo.Diary;
import kr.co.beliefarm.vo.Project;
import kr.co.beliefarm.vo.ProjectStatement;
import kr.co.beliefarm.vo.Reward;
import kr.co.beliefarm.vo.SupportProject;

@Controller
@RequestMapping("/project/")
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	@Autowired
	private FarmerService farmerService;
	@Autowired
	private DiaryService diaryService;
	@Autowired
	private RewardService rewardService;
	@Autowired
	private SupportProjectService supportProjectService;
	
	/**
	 * 메인 페이지에서 프로젝트들을 주는 handler method 
	 * @return
	 * 작성자 : 이주현 
	 */
	@RequestMapping("main")
	public ModelAndView viewProjects() {
		
		projectService.makeQrCode("1", "1");
		
		List<Project> prjList = projectService.selectAllProjects();
		for(int i=0; i<prjList.size(); i++) {
			Project prj = prjList.get(i);			
			
			prj.setFarmer(farmerService.selectFarmerById(prj.getFarmerId())); /////////////농부 SET
			
			List<Reward> rewardsList = rewardService.selectRewardsByPrjId(prj.getId()); //해당 프로젝트드의 리워드들 담을 List			
			List rewardsIdList = new ArrayList(); //해당 프로젝트의 리워드아이디들 담을 List			
			for(int j=0; j<rewardsList.size(); j++) {
				rewardsIdList.add(rewardsList.get(j).getId()); //해당 프로젝트의 리워드 아이디들만 담음 
			}				
		
			int investors = 0; //투자자 수  
			for(int j=0; j<rewardsIdList.size(); j++) {
				investors += supportProjectService.selectSupportProjectNumByRwdId((int)rewardsIdList.get(j));				
			}
			prj.setInvestors(investors); /////////////////////투자자 수 SET		
			
			int collectedMoney = 0; //모인 금액		
			for(int j=0; j<rewardsList.size(); j++) {//리워드 개수만큼 도는 for 문 	
				int rwdId = (int)rewardsIdList.get(j); //해당 리워드 아이디			
				int rwdPrice = rewardsList.get(j).getPrice(); //각 리워드의 가격
				//System.out.println(rwdPrice);
				
				List<SupportProject> sprtPrj = supportProjectService.selectSprtProjectsByRwdId(rwdId); //각 리워드의 후원 객체들 
				//System.out.println("후원 객체들 : "+sprtPrj);
				int sprtQuantity = 0; //각 리워드의 후원 수 
				for (int jj=0; jj<sprtPrj.size(); jj++) {
					sprtQuantity += sprtPrj.get(jj).getquantity();
				}
				collectedMoney += rwdPrice * sprtQuantity;
			}
			prj.setCollectedMoney(collectedMoney); ///////////모인 금액 SET
			
			///////////////////////프로젝트 달성률 SET//////////////////////////
			String achievedRateStr = String.format("%.1f", (collectedMoney*100/(float)prj.getGoal())); //반올림해서 소수점 첫째자리까지만 표현 
			float achievedRate = Float.parseFloat(achievedRateStr);
			prj.setAchievedRate(achievedRate);
			
			///////////////////////프로젝트 남은 일수 set///////////////////////
			Calendar cal = Calendar.getInstance();			
			Date endDate = (Date)prj.getEndDate(); 
			Date currentDate = cal.getTime(); //현재시간			
			//남은 일수 계산하고 SET
			long diff = endDate.getTime() - currentDate.getTime();
			long diffDays = diff/(24*60*60*1000);
			prj.setRest((int)diffDays);		
			
		}//for문 끝 
		return new ModelAndView("index", "prjList", prjList);		
	}
	
	/**
	 * 메인 페이지에서 프로젝트 상세페이지로 이동시키는 handler method
	 * @param 프로젝트 id
	 * @return
	 * 작성자 : 이주현 
	 */
	 @RequestMapping(value = "projectDetail", method = RequestMethod.GET)
	public ModelAndView viewProjectDetail(@RequestParam int projectId) {		
		 
		Project prj = projectService.selectProjectById(projectId);
		
		/* ---------- 프로젝트에 농부 SET -------- */
		prj.setFarmer(farmerService.selectFarmerById(prj.getFarmerId()));
		
	
				
		List<Reward> rewardsList = rewardService.selectRewardsByPrjId(projectId); //해당 프로젝트드의 리워드들 담을 List
		List rewardsIdList = new ArrayList(); //해당 프로젝트의 리워드아이디들 담을 List 
		for(int i=0; i<rewardsList.size(); i++) {
			rewardsIdList.add(rewardsList.get(i).getId());			
		}
		
		int investors = 0; //후원자 수 초기화 
		// 해당 프로젝트의 리워드 리스트 수 만큼 돌면서 처리 : 총 후원자 수, 모인 금액, 리워드별 후원자 수  
		for(int i=0; i<rewardsIdList.size(); i++) {
			int rwdId = (int)rewardsIdList.get(i); //해당 리워드 아이디
			/* ---------- 리워드별 후원자 수 SET -------- */
			int rwdSupportNum = supportProjectService.selectSupportProjectNumByRwdId(rwdId); //해당 리워드의 후원자 수
			rewardsList.get(i).setSupportProjectsNum(rwdSupportNum); //전달할 리워드리스트에 각각의 후원자 수 SET 

			/* ------------ 총 후원자 수 구하기 -------- */
			investors += supportProjectService.selectSupportProjectNumByRwdId(rwdId);
		}
		prj.setInvestors(investors); // 총 후원자 수 SET
		prj.setRewards(rewardsList); // 리워드별 후원자 수 SET된 리워드리스트 SET 
		//System.out.println("전달하는 리워드 리스트 : "+rewardsList);


		int collectedMoney = 0; //모인 금액		
		for(int j=0; j<rewardsList.size(); j++) {//리워드 개수만큼 도는 for 문 	
			int rwdId = (int)rewardsIdList.get(j); //해당 리워드 아이디			
			int rwdPrice = rewardsList.get(j).getPrice(); //각 리워드의 가격
			//System.out.println(rwdPrice);
			
			List<SupportProject> sprtPrj = supportProjectService.selectSprtProjectsByRwdId(rwdId); //각 리워드의 후원 객체들 
			//System.out.println("후원 객체들 : "+sprtPrj);
			int sprtQuantity = 0; //각 리워드의 후원 수 
			for (int jj=0; jj<sprtPrj.size(); jj++) {
				sprtQuantity += sprtPrj.get(jj).getquantity();
			}
			collectedMoney += rwdPrice * sprtQuantity;
		}
		//System.out.println(collectedMoney);
		prj.setCollectedMoney(collectedMoney); //모인 금액 SET
		
		
		///////////////////////프로젝트 달성률 SET
		String achievedRateStr = String.format("%.1f", (collectedMoney*100/(float)prj.getGoal())); //반올림해서 소수점 첫째자리까지만 표현 
		float achievedRate = Float.parseFloat(achievedRateStr);
		prj.setAchievedRate(achievedRate);
		
		///////////////////////프로젝트 다이어리 set - Diary table에서 조회 (selectDiariesByPrjId)
		List<Diary> diaries = diaryService.selectDiariesByPrjId(1);
		prj.setDiaries(diaries);		
	
		
		///////////////////////프로젝트 남은 일수 set///////////////////////
		Calendar cal = Calendar.getInstance();		

		Date endDate = (Date)prj.getEndDate(); 
		Date currentDate = cal.getTime(); //현재시간 

		//남은 일수 계산하고 SET
		long diff = endDate.getTime() - currentDate.getTime();
		long diffDays = diff/(24*60*60*1000);
		//System.out.println(diffDays);
		prj.setRest((int)diffDays);
	
		
		///////////////////////프로젝트 남은 일수로 prjStatement SET
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		String endDateString = formatter.format(prj.getEndDate());
		String currentDateString = formatter.format(cal.getTime());		
		long endDateLong = Long.parseLong(endDateString);
		long currentDateLong = Long.parseLong(currentDateString);	
		
		if(diffDays==0) { //남은 일수가 0일때 (오늘끝날때) 
			long diffTime = endDateLong%1000000 - currentDateLong%1000000; 
			if(diffTime <= 0) { //시간,분,초 차이가 0이거나 음수이면(마감시간이 지나면) 프로젝트 마감처리 
				//System.out.println("finish!");
				prj.setPrjStatement(ProjectStatement.finished); //왜 바뀌지않니? 
			}
		}
				
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("content/project/projectDetail");
		mv.addObject("prj", prj);
		
		return mv;
	}
	
}
