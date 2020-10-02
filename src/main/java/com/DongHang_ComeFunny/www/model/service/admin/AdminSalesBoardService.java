package com.DongHang_ComeFunny.www.model.service.admin;

import java.util.List;
import java.util.Map;

import com.DongHang_ComeFunny.www.model.vo.Order;

public interface AdminSalesBoardService {

	Map<String, Object> viewSalesBoardList(int cPage, int cntPerPage, Map<String, Object> searchSalesBoard);
	
	List<Order> viewSales(int poNo);


}
