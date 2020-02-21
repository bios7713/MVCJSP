package Controller.LibraryBoard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LibraryBoardController extends javax.servlet.http.HttpServlet 
													implements javax.servlet.Servlet{  
	
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String commend = requestURI.substring(contextPath.length());

		if(commend.equals("/library.lb")) {
			LibraryInsertList action = new LibraryInsertList();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("LibraryBoard/board_list.jsp");
				dispatcher.forward(request, response);
				
				
		}else if(commend.equals("/boardWrite.lb")) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("LibraryBoard/board_write.jsp");
				dispatcher.forward(request, response);
					
				
		}else if(commend.equals("/boardWritePro.lb")) {
				LibraryWrite action = new LibraryWrite();
			action.execute(request, response);		
		response.sendRedirect("library.lb");
		
		
		}else if(commend.equals("/BoardDetailAction.lb")) {
			LibraryView action = new LibraryView();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("LibraryBoard/board_view.jsp");
				dispatcher.forward(request, response);

		}else if(commend.equals("/boardModify.lb")) {
			LibraryView action = new LibraryView();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("LibraryBoard/board_modify.jsp");
				dispatcher.forward(request, response);
		}else if(commend.equals("/BoardModifyPro.lb")) {
				LibraryModify action = new LibraryModify();
				action.execute(request, response);
				response.sendRedirect("BoardDetailAction.lb?num="+ request.getParameter("BOARD_NUM"));
		}else if(commend.equals("/boardDel.lb")) {
			LibraryDel action = new LibraryDel();
			action.execute(request, response);

			response.sendRedirect("library.lb");
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
