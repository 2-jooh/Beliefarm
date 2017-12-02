package kr.co.beliefarm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beliefarm.dao.DiaryDao;
import kr.co.beliefarm.service.DiaryService;
import kr.co.beliefarm.vo.Diary;

@Service
public class DiaryServiceImpl implements DiaryService {
	
	@Autowired
	DiaryDao diaryDao;

	@Override
	public List<Diary> selectDiariesByPrjId(int prjId) {
		return diaryDao.selectDiariesByPrjId(prjId);
	}

	
}
