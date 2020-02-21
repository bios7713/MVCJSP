package Controller.CommentBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.DAO.CommentBoardDAO;
import Model.DTO.CommentBoardDTO;
import Model.DTO.ReplyDTO;

public class CommentBoardReplyAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		Integer boardNum = Integer.parseInt(request.getParameter("num"));	
		CommentBoardDAO dao = new CommentBoardDAO();
		//ReplyDTO dto = dao.replySelectAll(boardNum);
		//request.setAttribute("Reply", dto);
		
		
		
		
	}
	

}
