package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class MemberInfoModifyPro {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			MemberDTO dto = new MemberDTO();
			dto.setUserId( request.getParameter("id"));
			dto.setUserEmail(request.getParameter("userEmail"));
			dto.setUserPh1(request.getParameter("userPh1"));
			dto.setUserPh2(request.getParameter("userPh2"));
			dto.setUserAddr(request.getParameter("userAddr"));
			MemberDAO dao = new MemberDAO();	
			dao.updateInfoMember(dto);
			
	}

}
