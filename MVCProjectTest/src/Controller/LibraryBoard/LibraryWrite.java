package Controller.LibraryBoard;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.LibraryBoardDAO;
import Model.DTO.BoardDTO;
import Model.DTO.LibraryBoardDTO;

public class LibraryWrite {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {		   

		HttpSession session = request.getSession();
		String filePath = "LibraryBoard\\update";
		String realPath = request.getRealPath(filePath);

		request.setCharacterEncoding("utf-8");

		System.out.println("realpath: "+ realPath);
		int fileSize = 1024*1024*5;
		try {
			MultipartRequest multi = new MultipartRequest(request,realPath,fileSize,"UTF-8",
					new DefaultFileRenamePolicy());

			LibraryBoardDTO  dto = new LibraryBoardDTO(); 
			dto.setUserId((String)session.getAttribute("memId"));
			dto.setBoardName(multi.getParameter("BOARD_NAME"));
			dto.setBoardContent(multi.getParameter("BOARD_CONTENT"));
			dto.setBoardPass(multi.getParameter("BOARD_PASS"));
			dto.setBoardSubject(multi.getParameter("BOARD_SUBJECT"));
			dto.setIpAddr(request.getRemoteAddr());


			dto.setOriginalFileName(multi.getOriginalFileName("BOARD_FILE"));
			dto.setStoreFileName(multi.getFilesystemName("BOARD_FILE"));

			File file = multi.getFile("BOARD_FILE");		 
			dto.setFileSize(file.length());
			String extension = null;
			if(file != null) {

				String fileName = multi.getOriginalFileName("BOARD_FILE");
				extension = fileName.substring(fileName.lastIndexOf("."));
				if(extension.equals(".jsp")) {
					file.delete();
					response.setContentType("text/html; charset =UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>");
					out.println("alert('JSP 파일은 업로드 할수없습니다.');");
					out.println("location.href = 'library.lb");
					out.println("</script>");
					out.close();
					return;
				}
			}
		 if(!extension.equals(".jsp")) {
			LibraryBoardDAO  dao = new LibraryBoardDAO();
			dao.writeLibrary(dto);
		 }
		} catch (IOException e) {

			e.printStackTrace();
		}


	}

}
