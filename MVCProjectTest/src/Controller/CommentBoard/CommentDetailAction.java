package Controller.CommentBoard;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.CommentBoardDAO;
import Model.DTO.CommentBoardDTO;
import Model.DTO.ReplyDTO;

public class CommentDetailAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 
		
		CommentBoardDAO dao = new CommentBoardDAO();
		Integer boardNum = Integer.parseInt(request.getParameter("num"));
	
		CommentBoardDTO dto = dao.oneSelect (boardNum);
		request.setAttribute("comment", dto);
		
		
		
		List listR = new ArrayList();
		listR = dao.replySelectAll();
		request.setAttribute("reply", listR);
		
		
	}
}
