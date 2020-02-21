package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.BoardDTO;
import Model.DTO.MemberDTO;

public class BoardDAO extends DataBaseInfo {
	final String columns = "  board_num, user_id, board_name, board_pass, board_subject, board_content, board_date, ip_addr, read_count ";
	
	public void boardCountUpdate(Integer boardNum) {
		getConnection();
		sql = "update board set read_Count = read_count +1 where board_num = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
	}


	public void boardUpdate(BoardDTO board) {
		getConnection();
		
		sql = "update board set board_subject= ?, board_content = ?, board_num= ? where board_pass  = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,board.getBoardSubject());
			pstmt.setString(2,board.getBoardContent());
			pstmt.setInt(3,board.getBoardNum());
		   pstmt.setString(4, board.getBoardPass());
			System.out.println("board.getBoardContent() : " + board.getBoardContent());
			System.out.println("board.getBoardSubject() : " + board.getBoardSubject() );
			System.out.println("board.getBoardNum(): " + board.getBoardNum());

		} catch (SQLException e) {

			e.printStackTrace();
		}

		
	}

	public void boardDelete(String num) {
		getConnection();

		sql = "delete from board where board_num = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

	}


	public BoardDTO oneSelect(Integer boardNum) {
		getConnection();
		BoardDTO dto = new BoardDTO();
		sql = "select "+ columns +" from board where board_num = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNum);

			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setUserId(rs.getString("user_id"));
				dto.setBoardName(rs.getString("board_name"));
				dto.setBoardSubject(rs.getString("board_subject"));
				dto.setBoardContent(rs.getString("board_content"));
				dto.setBoardDate(rs.getTimestamp("board_date"));
				dto.setIpAddr(rs.getString("ip_addr"));
				dto.setBoardPass(rs.getString("board_pass"));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close();
		}


		return dto;
	}




	public Integer BoardCount() {
		Integer result = 1;
		getConnection();
		sql= "select count(*) from BOARD";

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
	public List BoardInsertList() {
		getConnection();
		List list = new ArrayList();
		sql="select board_num, user_id, board_name, board_subject, "
				+ "board_content, board_date, ip_addr from BOARD";
		try {
			pstmt= conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto= new BoardDTO();
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setUserId(rs.getString("user_id"));
				dto.setBoardName(rs.getString("board_name"));
				dto.setBoardSubject(rs.getString("board_subject"));
				dto.setBoardContent(rs.getString("board_content"));
				dto.setBoardDate(rs.getTimestamp("board_date"));
				dto.setIpAddr(rs.getString("ip_addr"));
				list.add(dto);
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return list;
	}

	public Integer insertBoard(BoardDTO dto) {
		Integer result = null;
		getConnection();
		sql = "insert into Board("+columns+")"
				+ "values(num_seq.nextval,?,?,?,?,?,default,?,0)";
		try {
			pstmt = conn.prepareStatement(sql);					
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getBoardName());
			pstmt.setString(3, dto.getBoardPass());
			pstmt.setString(4, dto.getBoardSubject());
			pstmt.setString(5, dto.getBoardContent());
			pstmt.setString(6, dto.getIpAddr());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {		
			e.printStackTrace();
		}finally {
			close();
		}

		return result;
	}


}
