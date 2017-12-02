package kr.co.beliefarm.dao;

import java.util.List;

import kr.co.beliefarm.vo.Reward;

public interface RewardDao {
	public void updateReward(Reward reward);
	public Reward selectReward(int id);
	public List<Reward> selectRewardsByPrjId(int prjId);
}
