package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.AnswerBoardDTO;

public class AnswerBoardDAO extends DataBaseInfo {
	//자료실 추가 내용  >> original_file_name, store_file_name, file_size
	final String columns = " board_content, board_name, board_pass, ip_addr, user_id, board_subject, board_num, read_count, board_date "
	                              + ", original_file_name, store_file_name, file_size "
	                              + ", board_re_ref, board_re_lev, board_re_seq ";
	
	final String subquery = " select nvl(max(board_num),0) + 1 from AnswerBoard "; 
	
	
	public void boardDelete(Integer boardNum) {
		getConnection();
		sql = "delete from answerboard where board_num = ?";

		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNum);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public Integer boardCount() {
		getConnection();
		Integer result  = 0;
		
		sql = "select count(*) from answerboard";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			rs.next();
			result =rs.getInt(1);
			
		} catch (SQLException e) {
	
			e.printStackTrace();
		}finally {
			close();
		}

		return result;		
	}
	
	
	public void boardCountUpdate(Integer boardNum) {
		getConnection();
		
		sql= "update answerboard set read_count = read_count +1 "
				+ " where board_num = ?";
		
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
	
	public void answerModifyAction(AnswerBoardDTO dto) {
	     getConnection();
	     
	     sql = "update answerboard set "
	     		+ " board_subject = ? , board_content = ? "
	     		+ " , board_num =? where board_pass = ?";
	     
	     try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getBoardSubject());
			pstmt.setString(2, dto.getBoardContent());
			pstmt.setInt(3, dto.getBoardNum());
			pstmt.setString(4, dto.getBoardPass());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close();
		}
	}
	public void boardReply(AnswerBoardDTO dto) {
		getConnection();
		
		sql = " update answerboard "
				+ " set board_re_seq  = board_re_seq +1 "
				+ " where board_re_ref = ? and board_re_seq > ? "; 
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getBoardReRef());
			pstmt.setInt(2, dto.getBoardReSeq());
			pstmt.executeUpdate();
			
			
			int lev = dto.getBoardReLev() +1 ;
			int seq = dto.getBoardReSeq() +1 ;
			
			sql = " insert into answerboard (" + columns + ") "
					+ " values ( ?, ?, ?, ?, ?, ?, "
					+ " ( " + subquery + " ), 0, default, "
							+ " ?, ?, ?, "
							+ " ?, ?, ? )";
			
			pstmt = conn.prepareStatement(sql);

			
			pstmt.setString(1, dto.getBoardContent());
			pstmt.setString(2, dto.getBoardName());
			pstmt.setString(3, dto.getBoardPass());
			pstmt.setString(4, dto.getIpAddr());
			pstmt.setString(5, dto.getUserId());
			pstmt.setString(6, dto.getBoardSubject());
			pstmt.setString(7, dto.getOriginalFileName());
			pstmt.setString(8, dto.getStoreFileName());
			pstmt.setLong(9, 0);
			pstmt.setInt(10, dto.getBoardReRef());
			pstmt.setInt(11, lev);
			pstmt.setInt(12, seq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			
			close();
		
		}
		
		
	}
	
	
	public AnswerBoardDTO boardOneSelect(Integer boardNum) {
		getConnection();
		AnswerBoardDTO dto = new AnswerBoardDTO();
		sql = "select " + columns+ " from answerboard where board_num =?";
		
		try {
			pstmt= conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNum);
			rs = pstmt.executeQuery();
			//select 문을 사용할때는 rs를 쓴다 ??
			 
			if(rs.next()) {
			dto.setBoardContent(rs.getString("board_content"));
			dto.setBoardName(rs.getString("board_name"));
			dto.setBoardPass(rs.getString("board_pass"));
			dto.setIpAddr(rs.getString("ip_addr"));
			dto.setUserId(rs.getString("user_id"));
			dto.setBoardSubject(rs.getString("board_subject"));
			dto.setBoardNum(rs.getInt("board_num"));
			dto.setReadCount(rs.getInt("read_count"));
			dto.setBoardDate(rs.getTimestamp("board_date"));
			//자료실 추가 내용
			dto.setOriginalFileName(rs.getString("original_file_name"));
			dto.setStoreFileName(rs.getString("store_file_name"));
			dto.setFileSize(rs.getLong("file_size"));
			//답변형 추가내용 
			dto.setBoardReRef(rs.getInt("board_re_ref"));
			dto.setBoardReLev(rs.getInt("board_re_lev"));
			dto.setBoardReSeq(rs.getInt("board_re_seq"));
			
			}
			
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally {
			close();			
		}
		return dto;
	}

	
	public List boardSelect(int page , int limit) {
		int startRow = (page -1) * limit + 1;
		int endRow = startRow + limit - 1 ;
		getConnection();
		List list = new ArrayList();
		
		
		sql = " select * "
			 + " from ( select rownum rn ," + columns
			 + "       from ( select " + columns + " from answerboard "
		     + " 		          order by board_re_ref desc, board_re_seq asc )) "
		     + " where rn >= ? and rn <= ? ";

		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AnswerBoardDTO dto = new AnswerBoardDTO();			
				dto.setBoardContent(rs.getString("board_content"));
				dto.setBoardName(rs.getString("board_name"));
				dto.setBoardPass(rs.getString("board_pass"));
				dto.setIpAddr(rs.getString("ip_Addr"));
				dto.setUserId(rs.getString("user_id"));
				dto.setBoardSubject(rs.getString("board_subject"));
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setReadCount(rs.getInt("read_count"));
				dto.setBoardDate(rs.getTimestamp("board_date"));
				dto.setBoardReRef(rs.getInt("board_re_ref"));
				dto.setBoardReLev(rs.getInt("board_re_lev"));
				dto.setBoardReSeq(rs.getInt("board_re_seq"));
				list.add(dto);
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}	
		return list;
	
	}
	public Integer boardInsert(AnswerBoardDTO dto) {
		getConnection();
		Integer result = 0;
		sql = "insert into answerboard ("+ columns +") "
				+ " values (?, ?, ?, ?, ?, ?, (" +subquery+ "),"
				+ " 0,default,?,?,?,(" + subquery + "),0,0) ";
                                                                                                                                                                   //답변형 부모글 , 자식글, 스텝
		try {
			pstmt  = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getBoardContent());
			pstmt.setString(2, dto.getBoardName());
			pstmt.setString(3, dto.getBoardPass());
			pstmt.setString(4, dto.getIpAddr());
			pstmt.setString(5, dto.getUserId());
			pstmt.setString(6, dto.getBoardSubject());
			
			//자료실 추가내용
			pstmt.setString(7, dto.getOriginalFileName());
			pstmt.setString(8, dto.getStoreFileName());
			pstmt.setLong(9, 0);
			
			result = pstmt.executeUpdate();	
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			 close();
		}
		return result;
	}


}
