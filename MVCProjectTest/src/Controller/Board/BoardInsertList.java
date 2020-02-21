package Controller.Board;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.BoardDAO;

public class BoardInsertList {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = new BoardDAO();
		HttpSession session = request.getSession();
		List list= new ArrayList();
		list = dao.BoardInsertList();
		Integer count = dao.BoardCount();
		
		request.setAttribute("boards", list);
		request.setAttribute("count", count);
		
	}

}
