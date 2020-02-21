package Controller.Member;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Encrypt;
import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class MemberJoinAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
			request.setCharacterEncoding("UTF-8");
		    MemberDTO dto = new MemberDTO();
			dto.setUserId(request.getParameter("userId"));
			dto.setUserPw(
				Encrypt.getEncryption(request.getParameter("userPw")));
			dto.setUserName(request.getParameter("userName"));
			dto.setUserGender(request.getParameter("userGender"));
			dto.setUserEmail(request.getParameter("userEmail"));
			dto.setUserAddr(request.getParameter("userAddr"));
			dto.setUserPh1(request.getParameter("userPh1"));
			dto.setUserPh2(request.getParameter("userPh2"));	
			
			String birth = request.getParameter("userBirth");
		    SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		    Date date = null;
			try {
				date = dt.parse(birth);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		    
		    Timestamp userBirth = new Timestamp(date.getTime());
		    
		    dto.setUserBirth(userBirth);
		    
		    MemberDAO dao = new MemberDAO();
		    Integer result = dao.insertMember(dto);
		    String path = null;
		    	
		   if(result == null) {
			  		path = "memberRegist.nhn"; 
		   }else {
			   		path = "index.nhn";
			   		MemberMailAction mail = new MemberMailAction();
			   		mail.sendMail(dto.getUserEmail());
			   		
		   }
		   
		  return path; 
	}
	

}
