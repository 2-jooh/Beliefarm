package kr.co.beliefarm.service;

import kr.co.beliefarm.vo.Farmer;

public interface FarmerService {

	/**
	 * farmer Id로 농부하나 선택
	 * @param farmerId
	 * @return 해당 id의 농부 
	 */
	Farmer selectFarmerById(int farmerId);
}
