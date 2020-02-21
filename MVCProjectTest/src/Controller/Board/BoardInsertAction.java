package Controller.Board;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.BoardDAO;
import Model.DTO.BoardDTO;

public class BoardInsertAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) 
						{
		HttpSession session = request.getSession();
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();
		dto.setUserId((String)session.getAttribute("memId"));
		dto.setBoardContent(request.getParameter("BOARD_CONTENT"));
		dto.setBoardName(request.getParameter("BOARD_NAME"));
		dto.setBoardPass(request.getParameter("BOARD_PASS"));
		dto.setBoardSubject(request.getParameter("BOARD_SUBJECT"));

			Integer result = dao.insertBoard(dto);

			String path = null;

			if(result == 1) {
				path = "board.bd"; 
			}else {
				path = "boardwrite.bd";
			}
			return path;
	}	

}




