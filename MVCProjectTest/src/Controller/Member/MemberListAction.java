package Controller.Member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;

public class MemberListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		Integer count = dao.memberCount();
		List list = dao.memberListSelect();
		request.setAttribute("memberList", list);
		request.setAttribute("count", count);
	}

}
