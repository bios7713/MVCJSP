package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.MemberDTO;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class MemberDAO extends DataBaseInfo {
	
	final String columns = "user_id, user_pw, user_name, user_birth, user_gender, user_email, user_addr, user_ph1, user_ph2, user_regist";
	final String columns1 = "user_id, user_pw, user_name, user_birth, user_gender, user_email, user_addr, user_ph1, user_ph2";
	
	
	public String joinOkcheck(String userEmail) {
		String joinOk = null;
		getConnection();
		
		sql= "select join_ok from member where user_email =? and join_ok is null";
		
		try {
			pstmt = conn.prepareStatement(sql);
				
			pstmt.setString(1,userEmail);
			rs = pstmt.executeQuery();
		
			if(rs.next()) {
				joinOk = "t";			
			}else {
				joinOk = "f";
			}
		} catch (SQLException e) {	
			e.printStackTrace();
		}finally {
			close();
		}
		
		return joinOk;
	}
	
	public void joinUpdate(String num, String userEmail) {
		getConnection();
		sql = "update member set join_ok = ? where user_email =?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.setString(2, userEmail);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
	}
	
	
	
	public Integer pwUpdate(String userId,String newPw, String currPw) {
		getConnection();
		Integer result = 0;
		sql = "update member set user_pw = ? where user_id = ? and user_pw = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPw);
			pstmt.setString(2, userId);
			pstmt.setString(3, currPw);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return result; 
	}
	
	
		
		
	
	public void memberInfoDelete(String userId) {
		getConnection();
		
		sql = "delete from member where user_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		
		
	}
	
	public void updateInfoMember(MemberDTO member) {
		getConnection();
		
		sql = "update member set user_email= ?, user_ph1 = ?, user_ph2= ?, user_addr = ?"
				+" where user_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getUserEmail());
			pstmt.setString(2, member.getUserPh1());
			pstmt.setString(3, member.getUserPh2());
			pstmt.setString(4, member.getUserAddr());
			pstmt.setString(5, member.getUserId());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	
	}
	public Integer memberCount() {
		Integer result = 0;
		getConnection();
		sql = "select count(*) from member";
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
	public List memberListSelect() {
		getConnection();
		sql= "select "+columns+" from member";
		List list = new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();		
				dto.setUserAddr(rs.getString("user_addr"));
				dto.setUserBirth(rs.getTimestamp("user_birth"));
				dto.setUserEmail(rs.getString("user_email"));
				dto.setUserGender(rs.getString("user_gender"));
				dto.setUserId(rs.getString("user_id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setUserPh1(rs.getString("user_ph1"));
				dto.setUserPh2(rs.getString("user_ph2"));
				dto.setUserRegist(rs.getTimestamp("user_regist"));	
				list.add(dto);
			}
				
		} catch (SQLException e) {	
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public MemberDTO memberOneSelect(String userId) {
		getConnection();
		MemberDTO dto = new MemberDTO();
		sql = "select "+columns+" from member where user_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setUserAddr(rs.getString("user_addr"));
				dto.setUserBirth(rs.getTimestamp("user_birth"));
				dto.setUserEmail(rs.getString("user_email"));
				dto.setUserGender(rs.getString("user_gender"));
				dto.setUserId(rs.getString("user_id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setUserPh1(rs.getString("user_ph1"));
				dto.setUserPh2(rs.getString("user_ph2"));
				dto.setUserRegist(rs.getTimestamp("user_regist"));	
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}	
		return dto;
	}
	
	
	public Integer userCheck(String userId,String userPw) {
		getConnection(); 
		sql = "select user_pw from member where user_id = ? "
				+ " and join_ok is not null ";
		Integer result = null;
		try {
			  pstmt =conn.prepareStatement(sql);
			  pstmt.setString(1,userId);
			  rs = pstmt.executeQuery();
			  if(rs.next()) {
				String  dbPw = rs.getString(1);
					if(userPw.equals(dbPw)) {
					result = 1; //로그인 
					}else {
					result = 0; // 비밀번호 다름
					}
			  }else {
				  	result = -1; // 아이디 없음
			  }		  
		} catch (SQLException e) {		
				e.printStackTrace();
		}finally {
				close();
		}
		return result;
	}
	
	public String selectId(String userId) {
		String result = null;
		getConnection();
		
		sql = "select user_id From member where user_id = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			result = rs.getString("user_Id");
			}
			
		} catch (Exception e) {			
			  e.printStackTrace();
		}finally {
			  close();		
		}
			
		return result;
	}
	
	public Integer insertMember(MemberDTO member) {
	    
		Integer result = null;
		getConnection();
		sql = "INSERT INTO MEMBER("+columns1+")"+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,member.getUserId());
			pstmt.setString(2,member.getUserPw());
			pstmt.setString(3,member.getUserName());
			pstmt.setTimestamp(4, member.getUserBirth());
			pstmt.setString(5,member.getUserGender());
			pstmt.setString(6,member.getUserEmail());
			pstmt.setString(7,member.getUserAddr());
			pstmt.setString(8,member.getUserPh1());
			pstmt.setString(9,member.getUserPh2());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();		
		}
		return result;	
	}
	

}
