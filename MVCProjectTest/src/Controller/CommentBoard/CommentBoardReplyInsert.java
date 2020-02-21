package Controller.CommentBoard;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.CommentBoardDAO;
import Model.DTO.ReplyDTO;

public class CommentBoardReplyInsert {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CommentBoardDAO dao = new CommentBoardDAO();
		ReplyDTO reply = new ReplyDTO();
		HttpSession session = request.getSession();
		reply.setReplyName(request.getParameter("replyName"));
		reply.setReplayContent(request.getParameter("replyContent"));
		reply.setUserId((String)session.getAttribute("memId"));
		reply.setIpAddr(request.getRemoteAddr());
		dao.replyInsert(reply);

		
		
	}
	

}
