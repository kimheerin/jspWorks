package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩 요청
		request.setCharacterEncoding("utf-8");
		
		//브라우저로 응답
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("uid");
		String pwd = request.getParameter("passwd");
		
		PrintWriter out = response.getWriter();
			out.append("<html><body><p>계정 : "+ id + "</p>")
				.append("<p>암호 : " + pwd + "</p><body></html>");
			
		System.out.println(id + ", " + pwd);
	}

}
