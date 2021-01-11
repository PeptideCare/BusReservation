package com.bk.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import sun.rmi.server.Dispatcher;

// 버스 좌석 배정 클래스

@WebServlet("/BusSeat")
public class BusSeat extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// JSP에서 좌석 번호 할당
		String column = request.getParameter("column");
		String row = request.getParameter("row");
		
		// 좌석번호를 세션에 입력
		HttpSession session = request.getSession();
		session.setAttribute("column", column);
		session.setAttribute("row", row);
		
		response.sendRedirect("Reserve1.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
