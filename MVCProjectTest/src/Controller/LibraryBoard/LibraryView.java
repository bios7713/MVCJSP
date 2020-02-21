package Controller.LibraryBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.LibraryBoardDAO;
import Model.DTO.LibraryBoardDTO;

public class LibraryView {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Integer num = Integer.parseInt(request.getParameter("num"));
		LibraryBoardDAO dao = new LibraryBoardDAO();
		LibraryBoardDTO  dto = dao.oneSelect(num);
		
		request.setAttribute("library", dto);
		
	}

}
