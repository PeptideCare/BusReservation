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

// ���� �ð� ���� Ŭ����

@WebServlet("/BusTime")
public class BusTime extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// JSP���� �ð�, ���ϱ� �� �޾ƿ�
		String location = request.getParameter("location");
		String chk_info = request.getParameter("chk_info");
		
		// ���� �¼� ������ ���ǿ� �Է�
		HttpSession session = request.getSession();
		session.setAttribute("location", location);
		session.setAttribute("chk_info", chk_info);
		
		response.sendRedirect("BusSeat.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
