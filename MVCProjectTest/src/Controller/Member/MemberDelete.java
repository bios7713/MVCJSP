package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;

public class MemberDelete {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userId =  (String) session.getAttribute("memId");
		MemberDAO dao =new MemberDAO();
		dao.memberInfoDelete(userId);
		
		
		
	}

}
