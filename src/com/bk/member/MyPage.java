package com.bk.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.Dao.mDao;
import com.bk.Dto.mDto;

// 마이페이지 클래스

@WebServlet("/MyPage")
public class MyPage extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		mDao mdao = new mDao();
		
		HttpSession session = request.getSession();
		String mID = (String)session.getAttribute("memberId");
		
		ArrayList<mDto> list = mdao.select(mID);
		
		// 로그인한 아이디 값을 통해 정보를 받아옴
		for (int i = 0; i < list.size(); i++) {
			mDto mdto = list.get(i);
			String id = mdto.getId();
			String pw = mdto.getPw();
			String name = mdto.getName();
			request.setAttribute("id", id);
			request.setAttribute("pw", pw);
			request.setAttribute("name", name);
		}
		

		RequestDispatcher rd = request.getRequestDispatcher("MyPage.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
