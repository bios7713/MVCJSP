package Controller.Goods;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

public class GoodsController extends javax.servlet.http.HttpServlet 
                                                          implements javax.servlet.Servlet{
	
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String commend = requestURI.substring(contextPath.length());
		
		if(commend.equals("/goodsList.gd")) {
			GoodsListAction action  = new GoodsListAction();
			action.execute(request,response);
            RequestDispatcher dispatcher = 
					request.getRequestDispatcher("GoodsView/goodsList.jsp");		
			dispatcher.forward(request,response);			
		}else if(commend.equals("/goodsWriter.gd")) {			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("GoodsView/goodsForm.jsp");		
			dispatcher.forward(request,response);			
		}else if(commend.equals("/goodsPro.gd")) {
			GoodsProAction action = new GoodsProAction();
			action.execute(request,response);			
			response.sendRedirect("goodsList.gd");
			
		}else if(commend.equals("/goodsDetail.gd")) {
			GoodsDetailAction action  =  new GoodsDetailAction();
			action.execute(request,response);			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("GoodsView/goodsDetail.jsp");		
			dispatcher.forward(request,response);	
		}else if(commend.equals("/goodsModify.gd")) {
			GoodsModifyAction action = new GoodsModifyAction();
			action.execute(request,response);		
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("GoodsView/goodsModify.jsp");		
			dispatcher.forward(request,response);	
			
		}else if(commend.equals("/goodsModifyPro.gd")) {
			GoodsModifyActionPro action = new GoodsModifyActionPro();
			String path = action.execute(request,response);
			
			response.sendRedirect("goodsList.gd?num="+path);
		}else if(commend.equals("/goodsDelete.gd")) {
			GoodsDeleteAction action =new GoodsDeleteAction();
			action.execute(request,response);			
			response.sendRedirect("goodsList.gd");
			
			
		}else if(commend.equals("/goodsCartList.gd")) {
			GoodsCartListAction action = new GoodsCartListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = 
									request.getRequestDispatcher("GoodsView/goodsCartList.jsp");		
			dispatcher.forward(request,response);	
			
		}else if(commend.equals("/goodsCartAdd.gd")) {
			GoodsCartAddAction action = new GoodsCartAddAction();
			action.execute(request,response);
			response.sendRedirect("goodsCartList.gd");
			
		}else if(commend.equals("/goodsCartQtyUp.gd")) {
			GoodsCartQtyUpAction action = new GoodsCartQtyUpAction();
			action.execute(request,response);	
			response.sendRedirect("goodsCartList.gd");
			
		}else if(commend.equals("/goodsCartQtyDown.gd")) {
			GoodsCartQtyDownAction action = new GoodsCartQtyDownAction();
			action.execute(request,response);	
			
			response.sendRedirect("goodsCartList.gd");

		}else if(commend.equals("/goodsCartRemove.gd")) {
			GoodsCartRemoveAction action = new GoodsCartRemoveAction();
			action.execute(request,response);	
			response.sendRedirect("goodsCartList.gd");
		}else if(commend.equals("/goodsCartPayment.gd")) {
			GoodsCartPaymentAction action = new GoodsCartPaymentAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("GoodsView/CartPayment.jsp");		
			dispatcher.forward(request,response);	
		}else if(commend.equals("/goodsPaymentPro.gd")) {
			GoodsPaymentPro action = new GoodsPaymentPro();
			action.execute(request,response);
			
			
		}
		
		
		
		
		
		
	}
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

}
