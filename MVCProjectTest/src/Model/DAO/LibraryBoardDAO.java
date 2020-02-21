package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.LibraryBoardDTO;

public class LibraryBoardDAO extends DataBaseInfo {
	final String columns = "  board_num, user_id, board_name, board_pass, board_subject, board_content, board_date, ip_addr, read_count ,"
			                         + " original_file_name, store_file_name, file_size ";

	
	public Integer listCount() {
		getConnection();
		Integer result = 0;
		sql = "select count(*) from libraryboard";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			rs.next();
			result = rs.getInt(1);	
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
	
		return result;
	}
	
	public void LibraryDelete(Integer num) {
		getConnection();
		sql = "delete from Libraryboard where board_num = ?";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
			
		}
		
	
		
		
		
		
		
	}
	public void updateLibrary(LibraryBoardDTO dto) {
		getConnection();
	
		sql = "update libraryboard set board_subject = ?, board_content = ? ,board_num = ?"
				+ " where board_pass = ? "; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getBoardSubject());
			pstmt.setString(2,dto.getBoardContent());
			pstmt.setInt(3, dto.getBoardNum());
			pstmt.setString(4, dto.getBoardPass());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {	
			close();
		}

	}
	
	
	
	
	public List insertList( ) {
		getConnection();
		List list = new ArrayList();
		sql = "select  "+columns+ "from libraryboard ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
			while(rs.next()) {
				LibraryBoardDTO dto = new  LibraryBoardDTO();
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setUserId(rs.getString("user_id"));
				dto.setBoardName(rs.getString("board_name"));
				dto.setBoardPass(rs.getString("board_pass"));
				dto.setBoardSubject(rs.getString("board_subject"));
				dto.setBoardContent(rs.getString("board_content"));
				dto.setBoardDate(rs.getTimestamp("board_date"));
				dto.setIpAddr(rs.getString("ip_addr"));
				dto.setReadCount(rs.getInt("read_Count"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
		return list;		
	}
	
	public LibraryBoardDTO  oneSelect(Integer num){
		getConnection();
		LibraryBoardDTO dto = new LibraryBoardDTO();
		
		sql = "select "+ columns +" from libraryboard where board_num = ?";
		

		try {
			pstmt = conn.prepareStatement(sql);

		    pstmt.setInt(1, num);
		    rs =  pstmt.executeQuery();
		 	rs.next();
			dto.setBoardNum(rs.getInt("board_num"));
			dto.setUserId(rs.getString("user_id"));
			dto.setBoardName(rs.getString("board_name"));
			dto.setBoardPass(rs.getString("board_pass"));
			dto.setBoardSubject(rs.getString("board_subject"));
			dto.setBoardContent(rs.getString("board_content"));
			dto.setBoardDate(rs.getTimestamp("board_date"));
			dto.setIpAddr(rs.getString("ip_addr"));
			dto.setReadCount(rs.getInt("read_Count"));
			dto.setOriginalFileName(rs.getString("original_file_name"));
			dto.setStoreFileName(rs.getString("store_file_name"));
			dto.setFileSize(rs.getLong("file_size"));
			
			
			System.out.println("num: " + num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return dto;
	}
	public void writeLibrary(LibraryBoardDTO dto) {
		getConnection();
		String subquary  = "select nvl(max(board_num),0)+1 from libraryboard";

		sql= "insert into libraryboard ("+columns+") values (("+ subquary+"), ?, ?, ?, ?, ?, default, ?, 0, ?, ?, ?) ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getBoardName());
			pstmt.setString(3, dto.getBoardPass());
			pstmt.setString(4, dto.getBoardSubject());
			pstmt.setString(5, dto.getBoardContent());
			pstmt.setString(6, dto.getIpAddr());
			pstmt.setString(7, dto.getOriginalFileName());
			pstmt.setString(8, dto.getStoreFileName());
			
			if(dto.getFileSize() == null) {
				pstmt.setLong(9, 0);
			}else {
			pstmt.setLong(9, dto.getFileSize());
			
			}
			
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	
	}
	
	
	
	
		

}
