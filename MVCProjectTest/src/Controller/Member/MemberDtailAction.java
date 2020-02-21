package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class MemberDtailAction {
	public void execute(HttpServletRequest request, HttpServletResponse response){
		
		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		String userId= request.getParameter("id");
	System.out.println(userId);
	  MemberDTO dto = dao.memberOneSelect(userId);
	
		request.setAttribute("member", dto);
		System.out.println("actionDAO: " + dao);
	}

}
