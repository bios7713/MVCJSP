package Controller.CommentBoard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommentBoardController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String commend = requestURI.substring(contextPath.length());
		
		if(commend.equals("/CommentBoard.cb")) {
			CommentListAction action = new CommentListAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("CommentReply/comment_board_list.jsp");
				dispatcher.forward(request, response);
			
		}else if(commend.equals("/CommentWrite.cb") ) {			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("CommentReply/comment_board_write.jsp");
				dispatcher.forward(request, response);
				
		}else if(commend.equals("/CommentWritePro.cb")) {		
			CommentWritePro action = new CommentWritePro();
			String path = action.execute(request,response);
			response.sendRedirect(path);
		}else if(commend.equals("/CommentBoardDetailAction.cb")) {
			
			CommentDetailAction action = new CommentDetailAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("CommentReply/comment_board_view.jsp");
				dispatcher.forward(request, response);
		}else if(commend.equals("/CommentBoardModify.cb")) {
			
			CommentModifyAction action = new CommentModifyAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("CommentReply/comment_board_modify.jsp");
				dispatcher.forward(request, response);
				
		}else if(commend.equals("/CommentModifyActionPro.cb")) {
			CommentModifyActionPro action = new CommentModifyActionPro();
			action.execute(request, response);
			response.sendRedirect("CommentBoardDetailAction.cb?num="+request.getParameter("BOARD_NUM"));
		}else if(commend.equals("/CommentBoardDel.cb")) {
			CommentDelAction action = new CommentDelAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("CommentReply/comment_board_delete.jsp");
				dispatcher.forward(request, response);	
		}else if(commend.equals("/CommentBoardDelPro.cb")) {		
			response.sendRedirect("CommentBoard.cb");
			
		}else if(commend.equals("/CommentBoardReply.cb")) { 
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("CommentReply/comment_board_reply.jsp");
			dispatcher.forward(request, response);	
			
		}else if(commend.equals("/CommentBoardReplyPro.cb")) {
			CommentBoardReplyInsert action = new CommentBoardReplyInsert();
			action.execute(request, response);				
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
}
