package kr.co.beliefarm.service;

import java.util.List;

import kr.co.beliefarm.vo.Reward;

public interface RewardService {

	public void updateReward(Reward reward);
	
	public Reward selectReward(int id);
	
	public List<Reward> selectRewardsByPrjId(int prjId);
	
}