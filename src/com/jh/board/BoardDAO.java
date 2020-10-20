package com.jh.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.jh.utill.DBconnector;

public class BoardDAO {
	
	private DBconnector dbconnector;
	
	public BoardDAO() {
		dbconnector = new DBconnector();		
	}
	
	public ArrayList<BoardDTO> boardList() throws Exception {
		ArrayList<BoardDTO> ar = new ArrayList<>();
		
		Connection con = dbconnector.getConnect();
		
		String sql ="SELECT * FROM board";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
			BoardDTO boardDTO = new BoardDTO();
			
			boardDTO.setNum(rs.getLong("num"));
			boardDTO.setTitle(rs.getString("title"));
			boardDTO.setWriter(rs.getString("writer"));
			boardDTO.setContents(rs.getString("contents"));
			boardDTO.setRegDate(rs.getDate("regDate"));
			boardDTO.setHit(rs.getLong("hit"));
		
			ar.add(boardDTO);	
			
		}
		rs.close();
		st.close();
		con.close();
		
		return ar;
		
	}
	
	
	

}
