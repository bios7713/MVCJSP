package Controller.Member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction {
	public void execute(HttpServletRequest request, HttpServletResponse response){	
		HttpSession session = request.getSession();
			Cookie autoCK = new Cookie("autoLogin", "");
			autoCK.setMaxAge(0);
			response.addCookie(autoCK);

		
		session.invalidate();
		
	}

}
