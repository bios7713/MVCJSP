package Controller.CommentBoard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.CommentBoardDAO;
import Model.DTO.CommentBoardDTO;
import Model.DTO.ReplyDTO;

public class CommentWritePro {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		CommentBoardDTO dto = new CommentBoardDTO();
		dto.setBoardName(request.getParameter("BOARD_NAME"));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		dto.setBoardPass(request.getParameter("BOARD_PASS"));
		dto.setIpAddr(request.getRemoteAddr());
		HttpSession session =  request.getSession();
		dto.setUserId((String)session.getAttribute("memId"));
		CommentBoardDAO dao = new CommentBoardDAO();
		Integer result = dao.commentWrite(dto);
		
		
		
		
		String path = null;
		if(result == null) {
			
			path = "CommentWrite.cb";
		}else {
			path = "CommentBoard.cb";
		}
		
	
		
		return path;
		
		
	}
}
