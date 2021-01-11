package com.bk.bus;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.Dao.bDao;
import com.bk.Dto.bDto;

// ���� Ȯ�� Ŭ����

@WebServlet("/Reserve3")
public class Reserve3 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ���ǿ��� Ƽ�� DB�� �Է��� ���� �ҷ���
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("memberId");
		String location = (String)session.getAttribute("location");
		String chk_info = (String)session.getAttribute("chk_info");
		String row = (String)session.getAttribute("row");
		String column = (String)session.getAttribute("column");
		
		// DB�� Ƽ�� ���� ����
		bDao bdao = new bDao();
		bdao.insert(mId, location, chk_info, column, row);
		
		response.sendRedirect("Main.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
