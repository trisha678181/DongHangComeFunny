package com.DongHang_ComeFunny.www.model.dao.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DongHang_ComeFunny.www.model.vo.DoBoard;
import com.DongHang_ComeFunny.www.model.vo.NoticeBoard;

@Repository
public class AdminDoBoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int selectDoBoardCnt(Map<String, Object> searchDoBoard) {
		return sqlSession.selectOne("AdminDoBoard.selectDoBoardCnt", searchDoBoard);
	}

	public  List<DoBoard> selectDoBoardList(Map<String, Object> searchDoBoardMap) {
		return sqlSession.selectList("AdminDoBoard.selectDoBoardList", searchDoBoardMap);
	}

	public void deleteDoBoard(String dbNo) {
		sqlSession.delete("AdminDoBoard.deleteDoBoard", dbNo);
		
	}

}
