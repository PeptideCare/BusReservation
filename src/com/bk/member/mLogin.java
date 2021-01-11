package com.bk.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.Dao.mDao;
import com.bk.Dto.mDto;
import com.sun.xml.internal.bind.v2.model.core.ID;

// 로그인 클래스

@WebServlet("/mLogin")
public class mLogin extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();
		
		String mID = request.getParameter("mID");
		String mPass = request.getParameter("mPass");
		
		mDao mdao = new mDao();
		
		ArrayList<mDto> list = mdao.select(mID);
		
		// 아이디가 없을 시
		if (list.isEmpty()) {
			out.println("<script>");
			out.println("alert('회원가입을 해주세요.');");
			out.println("location.href='Login.jsp'");
			out.println("</script>");
		// 아이디가 있을 시
		}else{
			for (int i = 0; i < list.size(); i++) {
				mDto mdto = list.get(i);
				String id = mdto.getId();
				String pw = mdto.getPw();
				String name = mdto.getName();
				
				// 정상적인 로그인
				if(mID.equals(id) && mPass.equals(pw)){
					HttpSession session = request.getSession();
					session.setAttribute("memberId", mID);
					
					response.sendRedirect("Main.jsp");
				// 아이디는 있는데 비밀번호가 없을 시	
				}else {
					out.println("<script>");
					out.println("alert('비밀번호가 올바르지 않습니다.');");
					out.println("location.href='Login.jsp'");
					out.println("</script>");
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
