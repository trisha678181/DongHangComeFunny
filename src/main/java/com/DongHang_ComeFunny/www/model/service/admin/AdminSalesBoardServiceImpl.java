package com.DongHang_ComeFunny.www.model.service.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DongHang_ComeFunny.www.model.dao.admin.AdminSalesBoardDao;
import com.DongHang_ComeFunny.www.model.vo.Order;

import common.util.Paging;

@Service
public class AdminSalesBoardServiceImpl implements AdminSalesBoardService{
	
	@Autowired
	AdminSalesBoardDao adminSalesBoardDao;

	@Override
	public Map<String, Object> viewSalesBoardList(int cPage, int cntPerPage, Map<String, Object> searchSalesBoard) {
		Map<String,Object> commandMap = new HashMap<String, Object>();
		// 전체 회원 수 페이징 처리 및 조회
		Paging p = new Paging(adminSalesBoardDao.selectOrderCnt(searchSalesBoard), cPage, cntPerPage);
		System.out.println("*******페이징*******" + p);
		
		
		
		Map<String, Object> searchSalesMap = new HashMap<>();
			searchSalesMap.put("paging", p);
			searchSalesMap.putAll(searchSalesBoard);
			System.out.println(searchSalesMap);
			
			// Map에 담을 페이징된 회원의 리스트 조회
			List<Order> salesList = adminSalesBoardDao.selectOrderList(searchSalesMap); 
			
			System.out.println(salesList);
			commandMap.put("salesList",salesList);
			commandMap.put("paging",p);
			System.out.println("*******데이터베이스조회******" + commandMap);
			
			// adminUserController로 반환
			return commandMap;
		
	}

	@Override
	public List<Order> viewSales(int poNo) {
			List<Order> viewSales = adminSalesBoardDao.selectOrderByPoNo(poNo);
			System.out.println(viewSales);
			
			return viewSales;
			
			
		}

	
}
