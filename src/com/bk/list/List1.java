package com.bk.list;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.Dao.cDao;
import com.bk.member.mLogin;

// �Խ��� Ŭ����

@WebServlet("/List1")
public class List1 extends mLogin {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// �Խ��� JSP���� ��ġ, ����, ������ �޾ƿ�
		String cago = request.getParameter("location");
		String title = request.getParameter("title");
		String text = request.getParameter("contents");
		
		HttpSession session = request.getSession();
		String mID = (String)session.getAttribute("memberId");
		
		cDao cdao = new cDao();
		cdao.insert(mID, cago, title, text);
		
		response.sendRedirect("list1.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
