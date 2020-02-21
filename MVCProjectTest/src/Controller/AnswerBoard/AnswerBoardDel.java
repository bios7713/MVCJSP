package Controller.AnswerBoard;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnswerBoardDAO;
import Model.DTO.AnswerBoardDTO;

public class AnswerBoardDel {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			Integer boardNum =Integer.parseInt(request.getParameter("num"));
			AnswerBoardDAO dao = new  AnswerBoardDAO();
			AnswerBoardDTO dto = dao.boardOneSelect(boardNum);
			String fileName = dto.getStoreFileName();
			String realPath = request.getRealPath("AnswerBoard\\update");
			
			File file = new File(realPath + "\\" + fileName);
			
			file.delete();
			dao.boardDelete(boardNum);
			
		
		
	}

}
