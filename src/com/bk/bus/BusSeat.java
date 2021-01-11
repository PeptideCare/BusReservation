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

// ���� �¼� ���� Ŭ����

@WebServlet("/BusSeat")
public class BusSeat extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// JSP���� �¼� ��ȣ �Ҵ�
		String column = request.getParameter("column");
		String row = request.getParameter("row");
		
		// �¼���ȣ�� ���ǿ� �Է�
		HttpSession session = request.getSession();
		session.setAttribute("column", column);
		session.setAttribute("row", row);
		
		response.sendRedirect("Reserve1.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
