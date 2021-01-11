package com.bk.member;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bk.Dao.mDao;
import com.bk.Dto.mDto;
import com.sun.corba.se.pept.transport.Connection;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

// ȸ������ Ŭ����

@WebServlet("/mJoin")
public class mJoin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// �ѱ� ó��
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();
		
		mDao mdao = new mDao();
		String mName = request.getParameter("m_name");
		String mID = request.getParameter("m_id");
		String mPass = request.getParameter("m_pass");
		String id = null;
		
		ArrayList<mDto> list = mdao.select(mID);
		
		for (int i = 0; i < list.size(); i++) {
			mDto mdto = list.get(i);
			id = mdto.getId();
			String pw = mdto.getPw();
		}
		
		// �й��� �ٸ� ��
		if (((Integer.parseInt(mID)) > 20500000) || ((Integer.parseInt(mID)) < 20000000)){
			out.println("<script>");
			out.println("alert('�й��� ��Ȯ�ϰ� �Է����ּ���.');");
			out.println("location.href='Join.jsp'");
			out.println("</script>");
		// �̹� ���� ���� ��
		} else if (mID.equals(id)) {
			out.println("<script>");
			out.println("alert('�̹� �����Ͻ� ȸ���Դϴ�.');");
			out.println("location.href='Login.jsp'");
			out.println("</script>");
		// �������� ȸ������
		} else{
			
			mdao.insert(mName, mID, mPass);
		
			out.println("<script>");
			out.println("alert('ȸ�������� �Ǿ����ϴ�.');");
			out.println("location.href='Login.jsp'");
			out.println("</script>");
		}
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
