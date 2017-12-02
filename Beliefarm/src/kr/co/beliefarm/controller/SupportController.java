package kr.co.beliefarm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.beliefarm.service.FarmerService;
import kr.co.beliefarm.service.ProjectService;
import kr.co.beliefarm.service.RewardService;
import kr.co.beliefarm.service.SupportProjectService;
import kr.co.beliefarm.vo.Project;
import kr.co.beliefarm.vo.Reward;
import kr.co.beliefarm.vo.SupportProject;

@Controller
@RequestMapping("/supportProject/")
public class SupportController {
	@Autowired
	RewardService rewardService;
	@Autowired
	SupportProjectService supportProjectService;
	@Autowired
	ProjectService projectService;
	@Autowired
	FarmerService farmerService;

	@RequestMapping("showForm.do")
	public ModelAndView showSupportForm(int projectId) {
		ModelAndView mav = new ModelAndView();

		List<Reward> rewards = rewardService.selectRewardsByPrjId(projectId);

		Project project = projectService.selectProjectById(projectId);
		project.setFarmer(farmerService.selectFarmerById(project.getFarmerId()));
		mav.addObject("rewards", rewards);
		mav.addObject("projectId", projectId);
		mav.addObject("project", project);
		mav.setViewName("content/project/support2");

		return mav;

	}

	@RequestMapping("submitForm.do")
	public ModelAndView submitSupportForm(String projectId, String rewardId, String ordernum, String address) {

		SupportProject supportProject = new SupportProject();
		supportProject.setAddress(address);
		supportProject.setquantity(Integer.parseInt(ordernum));
		// supportProject.setUserId(userId);
		supportProject.setRewardId(Integer.parseInt(rewardId));

		supportProjectService.insertSupportProject(supportProject);

		return new ModelAndView("redirect:/project/projectDetail.do?projectId=" + projectId);
	}

	@RequestMapping(value = "selectReward.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectRewardId(int rewardId) {
		Reward reward = rewardService.selectReward(rewardId);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reward", reward);
		return map;
	}

}
