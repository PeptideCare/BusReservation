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

// 티켓 정보 확인 클래스

@WebServlet("/Ticket")
public class Ticket extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String location = null;
		String chk_info = null;
		String row = null;
		String column = null;
		
		// 한글처리
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		// 아이디값을 세션에서 받아옴
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("memberId");
		
		// 아이디값으로 DB에서 티켓 정보 받아옴
		bDao bdao = new bDao();
		ArrayList<bDto> list = bdao.select(mId);
		
		// 최근 티켓 정보 입력
		for (int i = 0; i < list.size(); i++) {
			bDto bdto = list.get(i);
			location = bdto.getLocation();
			chk_info = bdto.getChk_info();
			row = bdto.getRow();
			column = bdto.getColumn();
		}
		
		// 예약 내용이 없을 때 에러 처리
		if (location == null) {
			out.println("<script>");
			out.println("alert('예약 내용이 없습니다.');");
			out.println("location.href='Main.jsp'");
			out.println("</script>");
			out.flush();
		// 예약 내용이 있을 때 정보 전달해서 JSP에 출력
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
