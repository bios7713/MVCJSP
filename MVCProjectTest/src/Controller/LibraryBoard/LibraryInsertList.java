package Controller.LibraryBoard;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.LibraryBoardDAO;

public class LibraryInsertList {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		LibraryBoardDAO dao = new LibraryBoardDAO();
				List list = new ArrayList();
		
				list = dao.insertList();
				Integer count = dao.listCount();
				
				
				request.setAttribute("library", list);
				request.setAttribute("count", count);
				
		
	}

}
