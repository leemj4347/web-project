package www.lmj.com.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import www.lmj.com.db.DBconn;
import www.lmj.com.vo.Board;

public class BoardControl {
	
	public List<Board> selectBoardList(Board board){
		List<Board> result = new ArrayList<Board>();
		
		DBconn db = new DBconn();
		try (Connection conn = db.getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT id, title, writer, content FROM Board");
			
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			
			int i = 1;
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Board item = new Board();
				item.setId(rs.getInt("id"));
				item.setTitle(rs.getString("title"));
				item.setWriter(rs.getString("writer"));
				item.setContent(rs.getString("content"));
				
				result.add(item);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}

}
