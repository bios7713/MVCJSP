package Controller.CommentBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.CommentBoardDAO;
import Model.DTO.CommentBoardDTO;

public class CommentDelAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			CommentBoardDAO dao = new CommentBoardDAO();
			Integer boardNum = Integer.parseInt(request.getParameter("num"));
			
					
					dao.deleteComment(boardNum);
		
		
	}
}
