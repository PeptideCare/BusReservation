package com.bk.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bk.Dao.mDao;
import com.bk.Dto.mDto;

@WebServlet("/ChangePw")
public class ChangePw extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("m_name");
		String id = request.getParameter("m_id");
		String pw = request.getParameter("m_pass");
		String newpw = request.getParameter("m_Newpass");
		
		mDao mdao = new mDao();
		ArrayList<mDto> list = mdao.select(id);
		
		for (int i = 0; i < list.size(); i++) {
			mDto mdto = list.get(i);
			String mName = mdto.getName();
			String mId = mdto.getId();
			String mPw = mdto.getPw();
			
			// DB ������ ���� ���
			if (((mName != null) && (mId != null)) && (mPw != null)) {
				// ������ ��ġ�� ���
				if ((((mId.equals(id) && mPw.equals(pw)) && mName.equals(name)))) {
					mdao.update(name, id, pw, newpw);
					
					out.println("<script>");
					out.println("alert('��й�ȣ�� ����Ǿ����ϴ�.');");
					out.println("location.href='Login.jsp'");
					out.println("</script>");
				}
				// ������ ��ġ���� ���� ���
				else {
					out.println("<script>");
					out.println("alert('ȸ�������� ��ġ���� �ʽ��ϴ�.');");
					out.println("location.href='ChangePw.jsp'");
					out.println("</script>");
				}
			}
			// DB ������ ���� ���
			else {
				out.println("<script>");
				out.println("alert('ȸ�������� ��ġ���� �ʽ��ϴ�.');");
				out.println("location.href='ChangePw.jsp'");
				out.println("</script>");
			}

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
