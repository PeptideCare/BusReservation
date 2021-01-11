package com.bk.bus;

import java.io.IOException;
import java.io.PrintWriter;
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

// Ƽ�� ���� Ȯ�� Ŭ����

@WebServlet("/Ticket")
public class Ticket extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String location = null;
		String chk_info = null;
		String row = null;
		String column = null;
		
		// �ѱ�ó��
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		// ���̵��� ���ǿ��� �޾ƿ�
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("memberId");
		
		// ���̵����� DB���� Ƽ�� ���� �޾ƿ�
		bDao bdao = new bDao();
		ArrayList<bDto> list = bdao.select(mId);
		
		// �ֱ� Ƽ�� ���� �Է�
		for (int i = 0; i < list.size(); i++) {
			bDto bdto = list.get(i);
			location = bdto.getLocation();
			chk_info = bdto.getChk_info();
			row = bdto.getRow();
			column = bdto.getColumn();
		}
		
		// ���� ������ ���� �� ���� ó��
		if (location == null) {
			out.println("<script>");
			out.println("alert('���� ������ �����ϴ�.');");
			out.println("location.href='Main.jsp'");
			out.println("</script>");
			out.flush();
		// ���� ������ ���� �� ���� �����ؼ� JSP�� ���
		} else {
			request.setAttribute("column", column);
			request.setAttribute("row", row);
			request.setAttribute("location", location);
			request.setAttribute("chk_info", chk_info);
			
			RequestDispatcher rd = request.getRequestDispatcher("Ticket.jsp");
			rd.forward(request, response);	
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
