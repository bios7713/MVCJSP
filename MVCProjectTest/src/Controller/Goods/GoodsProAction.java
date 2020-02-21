package Controller.Goods;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.GoodsDAO;
import Model.DTO.GoodsDTO;

public class GoodsProAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String filePath = "GoodsView\\update";
		String realPath = request.getRealPath(filePath);
		int fileSize = 1024*1024*5;

		try {
			MultipartRequest multi = new MultipartRequest(
			request,realPath,fileSize, "UTF-8", new DefaultFileRenamePolicy() );
			GoodsDTO dto = new GoodsDTO( null,
					multi.getParameter("goodsNum"),
					(String)session.getAttribute("memId"),  //session은 Object로 되니까 String 으로 변환해야함..
					multi.getParameter("goodsName"),
					Integer.parseInt(multi.getParameter("goodsPrice")),
					Integer.parseInt(multi.getParameter("goodsQty")),
					multi.getParameter("goodsContent"),
					multi.getFilesystemName("goodsImage"),
					null);
			GoodsDAO dao = new GoodsDAO(); 
					dao.insertGoods(dto);
					
			
			
			
		} catch (IOException e) {
			// TDO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
