package Controller.AnswerBoard;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.AnswerBoardDAO;
import Model.DTO.AnswerBoardDTO;

public class AnswerBoardWritePro {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
				String path = null;
				String filePath = "AnswerBoard\\update";
				String realPath = request.getRealPath(filePath);
				int fileSize = 1024*1024*5;
				try {
					MultipartRequest multi = new MultipartRequest(request,realPath,fileSize,
							"UTF-8",new DefaultFileRenamePolicy());
					
					 AnswerBoardDTO dto = new AnswerBoardDTO();						
						dto.setBoardContent(multi.getParameter("BOARD_CONTENT"));
						dto.setBoardName(multi.getParameter("BOARD_NAME"));
						dto.setBoardSubject(multi.getParameter("BOARD_SUBJECT"));
						dto.setBoardPass(multi.getParameter("BOARD_PASS"));
						dto.setIpAddr(request.getRemoteAddr());
						HttpSession session = request.getSession();						
						dto.setUserId((String)session.getAttribute("memId"));
						AnswerBoardDAO dao = new AnswerBoardDAO();
				    	// 자료실 만들때 추가되는 내용	
						dto.setOriginalFileName(multi.getOriginalFileName("BOARD_FILE")); // "BOARD_FILE" << JSP에있는 file폼에 네임드.
						dto.setStoreFileName(multi.getFilesystemName("BOARD_FILE"));
						File file = multi.getFile("BOARD_FILE"); //파일의 객체추가 
						dto.setFileSize(file.length());
						
				    Integer result = dao.boardInsert(dto);			
						if(result == null) {
				      		path = "boardWrite.ab";					
				   		}else {
					   		path = "answerBoard.ab";				
				  		}					

				} catch (IOException e) {
			
					e.printStackTrace();
				}
		        	return path;
				
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
			
						
						
						
						
		
		
	}
}
