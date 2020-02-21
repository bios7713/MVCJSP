package Controller.LibraryBoard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.LibraryBoardDAO;
import Model.DTO.LibraryBoardDTO;

public class LibraryModify {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
			request.setCharacterEncoding("utf-8");
		
		LibraryBoardDAO dao = new LibraryBoardDAO();
		LibraryBoardDTO dto = new LibraryBoardDTO();
		
		dto.setBoardNum(Integer.parseInt(request.getParameter("BOARD_NUM")));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		dto.setBoardPass(request.getParameter("BOARD_PASS"));
		
		dao.updateLibrary(dto);
		
			
			
		
	}

}
