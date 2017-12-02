package kr.co.beliefarm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beliefarm.dao.RewardDao;
import kr.co.beliefarm.service.RewardService;
import kr.co.beliefarm.vo.Reward;

@Service
public class RewardServiceImpl implements RewardService {

	@Autowired
	private RewardDao rewardDao;

	@Override
	public void updateReward(Reward reward) {
		rewardDao.updateReward(reward);
	}

	@Override
	public List<Reward> selectRewardsByPrjId(int prjId) {
		// TODO Auto-generated method stub
		return rewardDao.selectRewardsByPrjId(prjId);
	}

	@Override
	public Reward selectReward(int id) {
		// TODO Auto-generated method stub
		return rewardDao.selectReward(id);
	}


}
