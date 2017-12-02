package kr.co.beliefarm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.beliefarm.service.DayValueService;
import kr.co.beliefarm.vo.DayValue;

@Controller
@RequestMapping("/dayValue/")
public class DayValueController {
	
	@Autowired
	DayValueService dayValueService;
	
	@RequestMapping("selectDayValue")
	@ResponseBody
	public Object selectDayValuesByProjectId(int projectId) {
		//System.out.println(projectId);
		List<DayValue> dayValueList = dayValueService.selectDayValueByPrjId(projectId);			
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put("dayValueList", dayValueList);
		result.put("code", "OK");
		
		return result;
	}
}
