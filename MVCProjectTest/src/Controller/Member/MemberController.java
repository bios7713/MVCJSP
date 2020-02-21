package Controller.Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String commend = requestURI.substring(contextPath.length());
		
		if(commend.equals("/index.nhn")) {
			CookieAction action = new CookieAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
							request.getRequestDispatcher("Main/main.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/memberRegist.nhn")) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberForm.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/userConfirm.nhn")) {
			MemberConfirm action = new MemberConfirm();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/userConfirm.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/loginPro.nhn")) {
			LoginAction action = new LoginAction();
			action.execute(request, response);
			response.sendRedirect("index.nhn");
			
		}else if(commend.equals("/logout.nhn")) {
			
			LogoutAction action =  new LogoutAction();
			action.execute(request, response);
			response.sendRedirect("index.nhn");
			
		}else if(commend.equals("/memberDetail.nhn")) {
			MemberDtailAction action = new MemberDtailAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberDetail.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/memberList.nhn")) {
			MemberListAction  action = new MemberListAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberList.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/memberInfo.nhn")) {
			MemberInfoAction action = new MemberInfoAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberInfo.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/memberInfoModify.nhn")) {
			MemberInfoAction action = new MemberInfoAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberInfoPro.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/memberInfoModifyPro.nhn")){
			MemberInfoModifyPro action = new MemberInfoModifyPro();
			action.execute(request, response);
			response.sendRedirect("memberList.nhn");
			
		}else if(commend.equals("/memberInfoDel.nhn")) {
			MemberDelAction action = new MemberDelAction();
			action.execute(request, response);
			response.sendRedirect("memberList.nhn");
			
		}else if(commend.equals("/memberModify.nhn")) {
			MemberModifyAction action = new MemberModifyAction();
			action.execute(request, response);
			
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberModify.jsp");
			dispatcher.forward(request, response);	
		
			
		}else if(commend.equals("/memberModifyPro.nhn")){
			MemberModifyProAction action = new MemberModifyProAction();
			action.execute(request, response);
			response.sendRedirect("memberDetail.nhn");
			
			
			
		}else if(commend.equals("/memPw.nhn")) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/pwModify.jsp");
			dispatcher.forward(request, response);
			
		}else if(commend.equals("/pwModify1.nhn")) {	
			PwModifyAction action = new PwModifyAction();
			Integer result = action.execute(request, response);
			if(result == 1) {
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher("Member/pwModify_1.jsp");
				dispatcher.forward(request, response);
			}else if(result == 0){
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('비밀번호가 일치하지 않습니다.')");
				out.println("location.href='memPw.nhn';");
				out.println("</script>");
				out.close();
			}
		}else if(commend.equals("/pwModifyPro.nhn")) {
			PwModifyProAction action = new PwModifyProAction();
			Integer result = action.execute(request, response);
			if(result ==1) {
				response.sendRedirect("memberDetail.nhn");
			}		
		}else if(commend.equals("/memberDel.nhn")) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Member/memberDel.jsp");
			dispatcher.forward(request, response);			
		}else if(commend.equals("/memberDelPro.nhn")) {
			MemberDelete action = new MemberDelete();
			action.execute(request, response);
			response.sendRedirect("logout.nhn");
		}else if(commend.equals("/mailForm.nhn")){
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("Mail/mailForm.jsp");
			dispatcher.forward(request, response);	
		}else if(commend.equals("/mailSend.nhn")) {
			MailSendAction action = new MailSendAction();
			action.execute(request, response);
				response.sendRedirect("index.nhn");
		}else if(commend.equals("/registOk.nhn")) {
				MemberMailOk action = new MemberMailOk();
			String path=action.execute(request, response);
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher(path);
				dispatcher.forward(request, response);	
			
		}
			
		if(commend.equals("/MemberJoinAction.nhn")) {
			MemberJoinAction action = new MemberJoinAction();
			String path = action.execute(request, response);
			response.sendRedirect(path);
		}
		
		
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		doProcess(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
		
	}
	
}
