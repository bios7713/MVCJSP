package Controller.Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.BoardDAO;
import Model.DTO.BoardDTO;

public class BoardDelAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			String num = request.getParameter("num");
			BoardDAO dao = new BoardDAO();
			dao.boardDelete(num);
	       
			
			
		
		
	}

}
