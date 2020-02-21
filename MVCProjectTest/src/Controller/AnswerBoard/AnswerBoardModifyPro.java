package Controller.AnswerBoard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnswerBoardDAO;
import Model.DTO.AnswerBoardDTO;

public class AnswerBoardModifyPro {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		AnswerBoardDAO dao = new AnswerBoardDAO();
		AnswerBoardDTO dto = new AnswerBoardDTO();
		dto.setBoardNum(Integer.parseInt(request.getParameter("BOARD_NUM")));
		dto.setBoardPass(request.getParameter("BOARD_PASS"));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));
		
				dao.answerModifyAction(dto);
		
		
		
			
		
		
		
	}
}
