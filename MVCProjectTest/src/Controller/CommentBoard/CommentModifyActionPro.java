package Controller.CommentBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.CommentBoardDAO;
import Model.DTO.CommentBoardDTO;

public class CommentModifyActionPro {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CommentBoardDTO dto = new CommentBoardDTO();
		CommentBoardDAO dao = new CommentBoardDAO();
       dto.setBoardNum(Integer.parseInt(request.getParameter("BOARD_NUM")));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));
		dto.setBoardPass( request.getParameter("BOARD_PASS"));	
		dao.modifyAction(dto);
		
		
	}
}
