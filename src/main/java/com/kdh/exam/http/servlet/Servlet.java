package com.kdh.exam.http.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/usr/home/main")
public class Servlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		파라미터 인코딩 UTF-8
		req.setCharacterEncoding("UTF-8");
//		서블릿이 HTML 파일을 만들 때 인코딩 UTF-8 
		resp.setCharacterEncoding("UTF-8");
//		HTML이 UTF-8 인코딩이라는 것을 브라우저에게 전달한다
		resp.setContentType("text/html; charset=UTF-8");

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/usr/home/main.jsp");
		requestDispatcher.forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
