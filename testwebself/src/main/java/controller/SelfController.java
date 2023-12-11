package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SelfDAO;

//경로
@WebServlet("*.do")
public class SelfController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	SelfDAO sDAO = new SelfDAO();
	
    public SelfController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//http://localhost:8080/testwebself/do.*
		
		//경로 생성
		String uri = request.getRequestURI();
		
		//커멘트 패턴(요청 경로)
		String command = uri.substring(uri.lastIndexOf("/"));
		System.out.println(command);
		String nextPage = "";
		
		if(command.equals("/abc.do")) {
			String message = "abc페이지 테스트";
			//모델 생성 후 저장
			request.setAttribute("abcmsg", message);
			nextPage = "/self.jsp";
			
			sDAO.abc();	//DAO 호출 -abcDAO에서 선언한 리스트 변수명 abc();
		}
		//페이지 이동
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
