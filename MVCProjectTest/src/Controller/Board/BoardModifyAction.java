package Controller.Board;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.BoardDAO;
import Model.DAO.MemberDAO;
import Model.DTO.BoardDTO;
import Model.DTO.MemberDTO;

public class BoardModifyAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		BoardDTO dto = new BoardDTO();
		dto.setBoardNum(Integer.parseInt(request.getParameter("BOARD_NUM")));
		System.out.println("num: " +Integer.parseInt(request.getParameter("BOARD_NUM")));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		System.out.println("content: " + request.getParameter("BOARD_CONTENT"));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));
		System.out.println("request.getParameter(BOARD_SUBJECT):"  + request.getParameter("BOARD_SUBJECT") );
		dto.setBoardPass(request.getParameter("BOARD_PASS"));
		System.out.println("request.getParameter(BOARD_PASS) : " + request.getParameter("BOARD_PASS") );
		BoardDAO dao = new BoardDAO();
				dao.boardUpdate(dto);
	
		

	}

}
