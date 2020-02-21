package Controller.AnswerBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnswerBoardDAO;
import Model.DTO.AnswerBoardDTO;

public class AnswerBoardDetail {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
				
			AnswerBoardDAO dao = new AnswerBoardDAO();
		
			Integer boardNum =Integer.parseInt(request.getParameter("num"));
			
			 dao.boardCountUpdate(boardNum);
			 AnswerBoardDTO  dto = dao.boardOneSelect(boardNum);
			 
			 request.setAttribute("answerboard", dto);
		
		
		
	}

}
