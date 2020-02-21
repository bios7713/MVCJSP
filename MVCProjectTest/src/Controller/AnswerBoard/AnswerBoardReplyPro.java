package Controller.AnswerBoard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.AnswerBoardDAO;
import Model.DTO.AnswerBoardDTO;

public class AnswerBoardReplyPro {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		AnswerBoardDTO dto = new AnswerBoardDTO();
		dto.setBoardNum(Integer.parseInt(request.getParameter("BOARD_NUM")));
		dto.setBoardReRef(Integer.parseInt(request.getParameter("BOARD_RE_REF")));
		dto.setBoardReLev(Integer.parseInt(request.getParameter("BOARD_RE_LEV")));
		dto.setBoardReSeq(Integer.parseInt(request.getParameter("BOARD_RE_SEQ")));
		
		dto.setBoardName(request.getParameter("BOARD_NAME"));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		dto.setBoardPass(request.getParameter("BOARD_PASS"));
		dto.setIpAddr(request.getRemoteAddr());
		HttpSession session = request.getSession();
		dto.setUserId((String)session.getAttribute("memId"));
		AnswerBoardDAO dao = new AnswerBoardDAO();
		dao.boardReply(dto);
				
	
		
		
		
	}

}
