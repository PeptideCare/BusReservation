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

// 버스 시간 배정 클래스

@WebServlet("/BusTime")
public class BusTime extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// JSP에서 시간, 등하교 값 받아옴
		String location = request.getParameter("location");
		String chk_info = request.getParameter("chk_info");
		
		// 버스 좌석 정보를 세션에 입력
		HttpSession session = request.getSession();
		session.setAttribute("location", location);
		session.setAttribute("chk_info", chk_info);
		
		response.sendRedirect("BusSeat.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
