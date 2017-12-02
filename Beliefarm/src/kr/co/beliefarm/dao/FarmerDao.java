package kr.co.beliefarm.dao;

import kr.co.beliefarm.vo.Farmer;

public interface FarmerDao {
	
	/**
	 * farmer Id로 농부하나 선택
	 * @param farmerId
	 * @return 해당 id의 농부 
	 */
	Farmer selectFarmerById(int farmerId);

}
