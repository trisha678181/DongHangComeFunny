package com.DongHang_ComeFunny.www.model.service.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DongHang_ComeFunny.www.model.dao.admin.AdminDoBoardDao;
import com.DongHang_ComeFunny.www.model.vo.DoBoard;

import common.util.Paging;

@Service
public class AdminDoBoardServiceImpl implements AdminDoBoardService {
	
	@Autowired
	AdminDoBoardDao adminDoBoardDao;

	@Override
	public Map<String, Object> viewDoBoardList(int cPage, int cntPerPage, Map<String, Object> searchDoBoard) {
		Map<String,Object> commandMap = new HashMap<>();
		
		Paging p = new Paging(adminDoBoardDao.selectDoBoardCnt(searchDoBoard), cPage, cntPerPage);
		
		Map<String,Object> searchDoBoardMap = new HashMap<>();
		searchDoBoardMap.put("paging",p);
		searchDoBoardMap.putAll(searchDoBoard);
		System.out.println(searchDoBoardMap);
		
		List<DoBoard> doBoardList = adminDoBoardDao.selectDoBoardList(searchDoBoardMap);
		
		commandMap.put("paging", p);
		commandMap.put("doBoardList", doBoardList);
		
		
		return commandMap;
	}

	@Override
	public void deleteDoBoard(String[] dbNo) {
		for(int i=0; i<dbNo.length; i++) {
			adminDoBoardDao.deleteDoBoard(dbNo[i]);
		}
	}
}
