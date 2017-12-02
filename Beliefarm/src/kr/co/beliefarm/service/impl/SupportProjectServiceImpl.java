package kr.co.beliefarm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beliefarm.dao.RewardDao;
import kr.co.beliefarm.dao.SupportProjectDao;
import kr.co.beliefarm.service.SupportProjectService;
import kr.co.beliefarm.vo.Reward;
import kr.co.beliefarm.vo.RewardStatement;
import kr.co.beliefarm.vo.SupportProject;

@Service
public class SupportProjectServiceImpl implements SupportProjectService{

	@Autowired
	private SupportProjectDao supportProjectDao;
	
	@Autowired
	private RewardDao rewardDao;
	
	
	@Override
	public void insertSupportProject(SupportProject supportProject) {

		
		int rewardId = supportProject.getRewardId();

		Reward reward = rewardDao.selectReward(rewardId);
		int rewardNumber = reward.getNumber();
		RewardStatement rewardStatement = reward.getRewardStatement();

		if (RewardStatement.now.equals(rewardStatement)) {// 리워드의 갯수가 0 이 아닐때=판매 중일때

			rewardNumber = rewardNumber - supportProject.getquantity();

			if (rewardNumber <= 0) {// 리워드 갯수가 다 떨어지면 마감표시를 한다.
				
				reward.setRewardStatement(RewardStatement.soldOut);
			}
			reward.setNumber(rewardNumber);
			
			supportProjectDao.insertSupportProject(supportProject);
			rewardDao.updateReward(reward);
		}

	}


	@Override
	public int selectSupportProjectNumByRwdId(int rwdId) {
		return supportProjectDao.selectSupportProjectNumByRwdId(rwdId);
	}


	@Override
	public List<SupportProject> selectSprtProjectsByRwdId(int rwdId) {
		return supportProjectDao.selectSprtProjectsByRwdId(rwdId);
	}

			

}
