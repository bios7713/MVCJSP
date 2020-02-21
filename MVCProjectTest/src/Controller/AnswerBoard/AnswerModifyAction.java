package Controller.AnswerBoard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnswerBoardDAO;
import Model.DTO.AnswerBoardDTO;

public class AnswerModifyAction {
		public void execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
			request.setCharacterEncoding("UTF-8");
			
			Integer boardNum = Integer.parseInt(request.getParameter("num"));
			AnswerBoardDAO dao = new AnswerBoardDAO();
			
			AnswerBoardDTO dto = dao.boardOneSelect(boardNum);
			
			request.setAttribute("answerboard", dto);
			
			
			
			
			
			
		}
}
