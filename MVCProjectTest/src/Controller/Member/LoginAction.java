package Controller.Member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.glass.ui.Application;

import Controller.Encrypt;
import Model.DAO.MemberDAO;


public class LoginAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 String userId = request.getParameter("id1");
		 String userPw = request.getParameter("pw");
		 String idStore = request.getParameter("idStore");
		 String autoLogin = request.getParameter("autoLogin");
		 
		 
		 MemberDAO dao = new MemberDAO();
		 HttpSession session = request.getSession();
		 Integer i = dao.userCheck(userId,Encrypt.getEncryption(userPw));
		 
		if(i == 1) {
			session.setAttribute("memId", userId);
			session.removeAttribute("failPw");
			session.removeAttribute("notId");
			if(autoLogin != null && autoLogin.equals("auto")) {
				Cookie autoCK = new Cookie("autoLogin", userId);
				autoCK.setMaxAge(60*10);
				response.addCookie(autoCK);
			}
			if(idStore != null && idStore.equals("store")) {
				Cookie cookie = new Cookie("id", userId);
				cookie.setMaxAge(60*60*24*30);
				response.addCookie(cookie);	   //브라우저 전송.			
			}else {
				Cookie cookie = new Cookie("id", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);	 
			}
		}else if(i == 0) {
			session.setAttribute("failPw", "비밀번호가 다릅니다." );
			session.removeAttribute("notId");
		}else if(i == -1) {
			session.setAttribute("notId", "아이디가 없거나 메일확인이 되지 않았습니다.");
			session.removeAttribute("failPw");
		}
		
	}

}
