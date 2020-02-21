package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class MemberModifyProAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		dto.setUserId((String) session.getAttribute("memId"));
		dto.setUserEmail(request.getParameter("userEmail"));
		dto.setUserAddr(request.getParameter("userAddr"));
		dto.setUserPh1(request.getParameter("userPh1"));
		dto.setUserPh2(request.getParameter("userPh2"));
	    dao.updateInfoMember(dto);
	}

}
