package com.DongHang_ComeFunny.www.model.dao.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DongHang_ComeFunny.www.model.vo.Order;

@Repository
public class AdminSalesBoardDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int selectOrderCnt(Map<String, Object> searchSalesBoard) {
		return sqlSession.selectOne("AdminSales.SelectOrderCnt", searchSalesBoard);
	}

	public List<Order> selectOrderList(Map<String, Object> searchSalesMap) {
		return sqlSession.selectList("AdminSales.selectOrderList", searchSalesMap);
	}

	public List<Order> selectOrderByPoNo(int poNo) {
		return sqlSession.selectList("AdminSales.selectOrederByPoNo", poNo);
	}


}
