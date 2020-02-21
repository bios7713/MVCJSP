package Controller.AnswerBoard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AnswerBoardController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String commend = requestURI.substring(contextPath.length());
		
		if(commend.equals("/answerBoard.ab")) {	
			AnswerBoardList action = new AnswerBoardList();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("AnswerBoard/ans_board_list.jsp");
				dispatcher.forward(request, response);
	
		}else if(commend.equals("/boardWrite.ab")) {
	
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("AnswerBoard/ans_board_write.jsp");
				dispatcher.forward(request, response);
		}else if(commend.equals("/boardWritePro.ab")) {		
			AnswerBoardWritePro action = new AnswerBoardWritePro();			 
			
			String path = action.execute(request, response);
			response.sendRedirect(path);
	
		}else if(commend.equals("/BoardDetailAction.ab")) {
			AnswerBoardDetail action = new AnswerBoardDetail();
			action.execute(request, response);
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("AnswerBoard/ans_board_view.jsp");
				dispatcher.forward(request, response);	
		}else if(commend.equals("/boardModify.ab")){
			AnswerModifyAction action = new  AnswerModifyAction();
			action.execute(request, response);	
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("AnswerBoard/ans_board_modify.jsp");
				dispatcher.forward(request, response);
			
		}else if(commend.equals("/BoardModifyAction.ab")) {
			AnswerBoardModifyPro action = new AnswerBoardModifyPro();
			action.execute(request, response);
			
			response.sendRedirect("BoardDetailAction.ab?num="+Integer.parseInt(request.getParameter("BOARD_NUM")));
		
		
		}else if(commend.equals("/boardDel.ab")) {
			AnswerBoardDel action = new AnswerBoardDel();
			action.execute(request, response);	
			response.sendRedirect("answerBoard.ab");
			
		}else if(commend.equals("/boardAnswer.ab")) {
			AnswerBoardReplyAction action = new AnswerBoardReplyAction();
			action.execute(request, response);	

			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("AnswerBoard/ans_board_reply.jsp");
				dispatcher.forward(request, response);

		}else if(commend.equals("/BoardReplyAction.ab")) {
			AnswerBoardReplyPro action = new AnswerBoardReplyPro();
			action.execute(request, response);
			
			response.sendRedirect("answerBoard.ab");
		}
				
		
	}

	
	
	
	
	
	
	
	
		@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		doProcess(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doProcess(request, response);
}

}
