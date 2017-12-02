package kr.co.beliefarm.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beliefarm.dao.RewardDao;
import kr.co.beliefarm.vo.Reward;
import kr.co.beliefarm.vo.SupportProject;

@Repository
public class RewardDaoImpl implements RewardDao{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void updateReward(Reward reward) {
		session.update("kr.co.beliefarm.config.mapper.rewardMapper.updateReward", reward);
	}

	@Override
	public List<Reward> selectRewardsByPrjId(int prjId) {
		List<Reward> rewards = session.selectList("kr.co.beliefarm.config.mapper.rewardMapper.selectRewardsByPrjId", prjId);
		if(rewards!=null) {
			for(Reward rwd: rewards) {
				int rewardId = rwd.getId();
				List <SupportProject> supportProjects = session.selectList("kr.co.beliefarm.config.mapper.supportProjectMapper.selectSprtProjectsByRwdId",rewardId);
				rwd.setSupportProjects(supportProjects);
			}
		}
		return rewards;
	}

	@Override
	public Reward selectReward(int id) {
		return session.selectOne("kr.co.beliefarm.config.mapper.rewardMapper.selectReward",id);
	}

}
