package Controller.Goods;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.GoodsDAO;
import Model.DTO.GoodsDTO;

public class GoodsModifyActionPro {
	public String execute(HttpServletRequest request, HttpServletResponse response) { 
	GoodsDTO goods = new GoodsDTO();
	String realPath = request.getRealPath("GoodsView\\update"); 
	int fileSize = 1024*1024*5;
	MultipartRequest  multi  = null;
	GoodsDAO dao = new GoodsDAO();
	try {
		multi = new MultipartRequest(request, realPath , fileSize , "UTF-8" , 
											new DefaultFileRenamePolicy() );
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	goods.setGoodsSeq(Integer.parseInt(multi.getParameter("goodsSeq")));
	goods.setGoodsPrice(Integer.parseInt(multi.getParameter("goodsPrice")));
	goods.setGoodsQty(Integer.parseInt(multi.getParameter("goodsQty")));
	goods.setGoodsContent(multi.getParameter("goodsContent"));
	 HttpSession session = request.getSession();
	 goods.setUserId((String)session.getAttribute("memId"));
	 File file = null;
	 if(multi.getFile("goodsImage") == null) {
		 	  dao.goodsContentUpdate(goods);
               //파일변경없이 내용만 변경.        
	 }else {
		 //파일과 내용을 변경
		 String fileName = multi.getParameter("fileDel");
		 file = new File(realPath+"\\"+ fileName);
		 if(file.exists()) {
			                   file.delete();
		 						goods.setGoodsImage(multi.getFilesystemName("goodsImage"));
		 						dao.goodsFileUpdate(goods);		 
		 }
	 
	 }

	return multi.getParameter("goodsSeq");
	}
	
}
