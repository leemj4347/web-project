package www.lmj.com.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import www.lmj.com.db.DBconn;
import www.lmj.com.vo.Board;

public class BoardControl {
	private final Logger logger = Logger.getLogger(getClass().getSimpleName());
	
	public Board selectOne(Board board) {
		Board result = new Board();
		
		DBconn db = new DBconn();
		try(Connection conn = db.getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT * FROM Board WHERE id = ?");
			
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, board.getId());
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				result.setId(rs.getInt("id"));
				result.setTitle(rs.getString("title"));
				result.setContent(rs.getString("content"));
				result.setWriter(rs.getString("writer"));
				result.setWdate(rs.getString("wdate"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int insertBoard(Board board) {
		int result = 0;
		
		DBconn db = new DBconn();
		
		try(Connection conn = db.getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO Board (title, writer, content) VALUES (?,?,?)");
			
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			
			logger.info(pstmt.toString());
			
			result = pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public List<Board> selectBoardList(Board board){
		List<Board> result = new ArrayList<Board>();
		
		DBconn db = new DBconn();
		try (Connection conn = db.getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT id, title, writer, content, wdate FROM Board");
			
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			
			int i = 1;
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Board item = new Board();
				item.setId(rs.getInt("id"));
				item.setTitle(rs.getString("title"));
				item.setWriter(rs.getString("writer"));
				item.setContent(rs.getString("content"));
				item.setWdate(rs.getString("wdate"));
				
				result.add(item);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}
	public int updateBoard(Board board) {
		int result = 0;
		
		DBconn db = new DBconn();
		
		try(Connection conn = db.getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("UPDATE SET Board (title, writer, content) VALUES (?,?,?)");
			
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			
			logger.info(pstmt.toString());
			
			result = pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
