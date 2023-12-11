package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;

@WebServlet("*.do")
public class ProntController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	ProductDAO pDAO = new ProductDAO(); 
	
    public ProntController() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		
		String command = uri.substring(uri.lastIndexOf("/"));
		System.out.println(command);
		String nextPage = "";
		
		if(command.equals("/list.do")) {
			List<String> products = pDAO.list();
			request.setAttribute("products", products);
			
			nextPage = "/product/list.jsp";
		}else if(command.equals("/cart.do")) {
			pDAO.addCart();
			nextPage = "/product/cart.jsp";
		}
		//페이지 이동
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}
}
