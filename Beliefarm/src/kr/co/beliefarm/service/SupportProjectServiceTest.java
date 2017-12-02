package kr.co.beliefarm.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import kr.co.beliefarm.vo.Reward;
import kr.co.beliefarm.vo.RewardStatement;
import kr.co.beliefarm.vo.SupportProject;
import kr.co.beliefarm.vo.User;

public class SupportProjectServiceTest {

	@Test
	public void insertSupportProjectTest() {
		
		// ApplicationContext 객체 생성
		ApplicationContext container = new ClassPathXmlApplicationContext(
				"kr/co/beliefarm/config/spring/model-context.xml");
		// Spring 컨테이너로 부터 MemberService bean 가져오기
		
		User user = new User();
		int userId = 4;
		user.setId(userId);
		

		SupportProjectService supportProjectService = (SupportProjectService) container
				.getBean("supportProjectServiceImpl");
		SupportProject supportProject = new SupportProject();
		supportProject.setId(0);
		supportProject.setUser(user);
		supportProject.setUserId(userId);
		supportProject.setquantity(48);
		supportProject.setRewardId(2);
		supportProject.setAddress("귀신의집");
		
		supportProjectService.insertSupportProject(supportProject);

	}
	
	@Test
	@Ignore
	public void updateRewardTest() {

		// ApplicationContext 객체 생성
		ApplicationContext container = new ClassPathXmlApplicationContext(
				"kr/co/beliefarm/config/spring/model-context.xml");
		// Spring 컨테이너로 부터 MemberService bean 가져오기
		
		RewardService rewardService = (RewardService) container.getBean("rewardServiceImpl");
		Reward reward = new Reward();
		
		reward.setId(1);
		reward.setNumber(80);

		rewardService.updateReward(reward);
	}
	

	@Test
	@Ignore
	public void selectRewardsTest() {

		// ApplicationContext 객체 생성
		ApplicationContext container = new ClassPathXmlApplicationContext(
				"kr/co/beliefarm/config/spring/model-context.xml");
		// Spring 컨테이너로 부터 MemberService bean 가져오기
		
		RewardService rewardService = (RewardService) container.getBean("rewardServiceImpl");
		List<Reward> rewards = rewardService.selectRewardsByPrjId(1);
		assertEquals(rewards.size(),2);
		for(Reward rwd: rewards) {
			System.out.println(rwd.toString());
			System.out.println(rwd.getSupportProjects().toString());
		}
	}
	
	@Test
	public void rewardEnumTest() {
		
		
	}

	

}
