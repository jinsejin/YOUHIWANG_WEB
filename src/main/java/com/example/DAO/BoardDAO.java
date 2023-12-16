package com.example.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.bean.BoardVO;
//import com.example.util.JDBCUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository  //전역 변수로 만들겠다는 뜻
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;



	public int insertBoard (BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}

	public int deleteBoard (int registerNum) {
		int result = sqlSession.delete("Board.deleteBoard", registerNum);
		return result;
	}

	public int updateBoard (BoardVO vo) {
		int result = sqlSession.update("Board.updateBoard", vo);
		return result;
	}


	public BoardVO getBoard(int registerNum ){
		BoardVO one = sqlSession.selectOne("Board.getBoard", registerNum);
		return one;
	}

	public List<BoardVO> getBoardList(){
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}


}

