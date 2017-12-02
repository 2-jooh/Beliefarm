package kr.co.beliefarm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beliefarm.dao.FarmerDao;
import kr.co.beliefarm.service.FarmerService;
import kr.co.beliefarm.vo.Farmer;

@Service
public class FarmerServiceImpl implements FarmerService {
	
	@Autowired
	FarmerDao farmerDao; 
	
	@Override
	public Farmer selectFarmerById(int farmerId) {
		return farmerDao.selectFarmerById(farmerId);
	}

}
