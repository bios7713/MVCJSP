package Controller.CommentBoard;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.CommentBoardDAO;
import Model.DTO.CommentBoardDTO;
import Model.DTO.ReplyDTO;

public class CommentListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CommentBoardDAO dao = new CommentBoardDAO();
		List list = new ArrayList();
		list = dao.selectAll();
		Integer count  = dao.countlist();
		request.setAttribute("commentlist", list);
		request.setAttribute("count", count);
		


	}


}
