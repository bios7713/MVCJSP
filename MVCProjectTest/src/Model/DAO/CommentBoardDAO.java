package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.CommentBoardDTO;
import Model.DTO.ReplyDTO;

public class CommentBoardDAO extends DataBaseInfo {
	
	final String columns = "board_num,user_id,board_name,board_pass,board_subject,board_content,board_date,ip_addr";
	final String subquery  = "select nvl(max(board_num),0)+1 from comment1" ;
	final String subquery1  = "select nvl(max(board_num),0)+1 from reply" ;
	public Integer countlist() {
		getConnection();
		Integer count = 0;
		sql = "select count(*) from comment1";
		try {
			pstmt=  conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			count = rs.getInt(1);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
		return count;
	}
	
	public void modifyAction(CommentBoardDTO dto) {
		getConnection();
		sql = "update comment1 set board_subject =? , board_content =?, board_num = ? "
				+ " where board_pass =?  ";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getBoardSubject() );
			pstmt.setString(2, dto.getBoardContent());
			pstmt.setInt(3, dto.getBoardNum());
			pstmt.setString(4, dto.getBoardPass());
			System.out.println(dto.getBoardNum());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	public void deleteComment(Integer boardNum) {
		getConnection();
		sql = "delete from comment1 where board_num =?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	public List replySelectAll() {
		getConnection();
		List list = new ArrayList();
		sql = "select board_num,reply_num, user_id,reply_name,"
				+  " reply_Content, reply_date, ip_addr "
				+ " from reply "; 
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReplyDTO reply = new ReplyDTO();
				reply.setBoardNum(rs.getInt("board_num"));
				reply.setReplyNum(rs.getInt("reply_num"));
				reply.setUserId(rs.getString("user_id"));
				reply.setReplyName(rs.getString("reply_name"));
				reply.setReplayContent(rs.getString("reply_content"));
				reply.setReplyDate(rs.getTimestamp("reply_date"));
				reply.setIpAddr(rs.getString("ip_addr"));
				list.add(reply);
		
			}
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		
		return list;
	}
	public CommentBoardDTO oneSelect(Integer boardNum) {
		CommentBoardDTO dto = new CommentBoardDTO();
		getConnection();
		sql = "select " + columns + " from comment1 where board_num = ?";
	
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			rs = pstmt.executeQuery();
			
		    rs.next();
			dto.setBoardNum(rs.getInt("board_num"));
			dto.setUserId(rs.getString("user_id"));
			dto.setBoardName(rs.getString("board_name"));
			dto.setBoardPass(rs.getString("board_pass"));
			dto.setBoardSubject(rs.getString("board_subject"));
			dto.setBoardContent(rs.getString("board_content"));
			dto.setBoardDate(rs.getTimestamp("board_date"));
			dto.setIpAddr(rs.getString("ip_Addr"));
		    
		  
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;
		
	}
	public List selectAll() {	
		getConnection();
		List list = new ArrayList();
		sql = " select " + columns + " from comment1 "; 
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
				CommentBoardDTO dto = new CommentBoardDTO();
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setUserId(rs.getString("user_id"));
				dto.setBoardName(rs.getString("board_name"));
				dto.setBoardPass(rs.getString("board_pass"));
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
	public void replyInsert(ReplyDTO reply) {
		getConnection();
		sql =" insert into reply ( select board_num,reply_num, user_id,reply_name, "
							    + " reqly_Content, reply_date, ip_addr ) "
							    + " valuse ( ("+ subquery1 + "),?,?,?,?,default,? )" ;
		   try {
			pstmt = conn.prepareStatement(sql);
			
			   pstmt.setInt(1,reply.getBoardNum());
			   pstmt.setInt(2, reply.getReplyNum());
			   pstmt.setString(3, reply.getUserId());
			   pstmt.setString(4, reply.getReplyName());
			   pstmt.setString(5, reply.getReplayContent());
			   pstmt.setTimestamp(6, reply.getReplyDate());
			   pstmt.setString(7, reply.getIpAddr());		   
			   pstmt.executeUpdate();
			   
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();			
		}
		   
		
	}
	
	public Integer commentWrite(CommentBoardDTO dto) {
		getConnection();
		Integer result= 0;
		sql ="insert into comment1 (board_num, user_id, board_name, board_pass, "
				+ "board_subject ,board_content, board_date,ip_addr)"
				+ " values (( " + subquery + "),?,?,?,?,?,default,?) ";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,dto.getUserId());
			pstmt.setString(2,dto.getBoardName());
			pstmt.setString(3,dto.getBoardPass());
			pstmt.setString(4,dto.getBoardSubject());
			pstmt.setString(5,dto.getBoardContent());
			pstmt.setString(6,dto.getIpAddr());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			
			close();
		}
		return result;
		
		
	}
	
	
	
	
	
	

}
