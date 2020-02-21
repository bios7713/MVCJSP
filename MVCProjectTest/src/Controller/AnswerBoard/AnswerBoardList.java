package Controller.AnswerBoard;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnswerBoardDAO;

public class AnswerBoardList {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			AnswerBoardDAO dao =new AnswerBoardDAO();
			int page = 1; //처음 페이지 번호
			
			if(request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			List list  = new ArrayList();		
			int limit = 10; //한 화면에 나오는 페이지수
			int limitPage = 10; // 아래 표시되는 페이지번호수
			list = dao.boardSelect(page,limit);
			
			Integer count  = dao.boardCount();
	
			int maxPage = (int)((double)count / limit + 0.95);
			int startPage = (int)(((double)page / limitPage + 0.95)-1)*limitPage+1;
			int endPage =  startPage + limitPage -1 ;
			if(endPage > maxPage) endPage = maxPage;
			
		
			
			
			request.setAttribute("page", page);
			request.setAttribute("maxPage", maxPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);

			request.setAttribute("answerboards", list);
			request.setAttribute("count", count);
				
			
					
		
	}

}
