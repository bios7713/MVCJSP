package Controller.Board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Member.MemberJoinAction;

public class BoardController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String commend = requestURI.substring(contextPath.length());
		
		 if(commend.equals("/board.bd")) {
			 BoardInsertList action = new BoardInsertList();
			 action.execute(request, response);	 
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher("Board/qna_board_list.jsp");
					dispatcher.forward(request, response);
			 }else if(commend.equals("/boardWrite.bd")) {
				 RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Board/qna_board_write.jsp");
				dispatcher.forward(request, response);	
				
			 }else if(commend.equals("/BoardWritePro.bd")) {
				 	
					BoardInsertAction action = new BoardInsertAction();
					String path = action.execute(request, response);
				    response.sendRedirect(path);
				    
			 }else if(commend.equals("/BoardDetailAction.bd")){
				 BoardView action = new BoardView();
				 action.execute(request, response);	
				 RequestDispatcher dispatcher = 
							request.getRequestDispatcher("Board/qna_board_view.jsp");
						dispatcher.forward(request, response);	 			
			 }else if(commend.equals("/boardDel.bd")) {
				 RequestDispatcher dispatcher = 
							request.getRequestDispatcher("Board/qna_board_delete.jsp");
						dispatcher.forward(request, response);	 
						
			 }else if(commend.equals("/boardDelPro.bd")) {
				 BoardDelAction action = new BoardDelAction();
					action.execute(request, response);
				response.sendRedirect("board.bd");
				  
			 }else if(commend.equals("/boardModify.bd")) {		 
				 BoardView action = new BoardView();
				 action.execute(request, response);	
				 RequestDispatcher dispatcher = 
							request.getRequestDispatcher("Board/qna_board_modify.jsp");
						dispatcher.forward(request, response);	 				
						
			 }else if(commend.equals("/BoardModifyAction.bd")) {
				 BoardModifyAction action =  new BoardModifyAction();
					action.execute(request, response);
					response.sendRedirect("BoardModifyAction.bd?num="+request.getParameter("BOARD_NUM"));
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
