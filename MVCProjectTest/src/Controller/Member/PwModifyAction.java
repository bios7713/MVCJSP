package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Encrypt;
import Model.DAO.MemberDAO;


public class PwModifyAction {
	public Integer execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session =  request.getSession();
		String userId= (String)session.getAttribute("memId");
		String userPw =Encrypt.getEncryption(request.getParameter("pw"));
		MemberDAO dao = new MemberDAO();
		
		Integer result = dao.userCheck(userId, userPw);
		
	
		return result;
	
	}
}
