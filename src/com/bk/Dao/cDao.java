package com.bk.Dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bk.Dto.cDto;

// 게시판 다오 클래스

public class cDao {
	
	// 오라클 데이터베이스 드라이버 연결
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##scott";
	String pw = "tiger";
	
	public cDao() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	// Select
	public ArrayList<cDto> select() {
		
		ArrayList<cDto> list = new ArrayList<cDto>();
		
		java.sql.Connection con = null;
		java.sql.PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			String sql = "SELECT * FROM community";
			pstmt = con.prepareStatement(sql);
			res = pstmt.executeQuery();
			
			
			while(res.next()) {
				String mId = res.getString("mid");
				int Seq = res.getInt("seq");
				String Cago = res.getString("cago");
				String Title = res.getString("Title");
				String Text = res.getString("Text");
				String Dat = res.getString("Dat");
				
				cDto cdto = new cDto(mId, Seq, Cago, Title, Text, Dat);
				list.add(cdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(res != null) res.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	// Insert
	public ArrayList<cDto> insert(String mId, String Cago, String Title, String Text) {
		
		java.sql.Connection con = null;
		java.sql.PreparedStatement pstmt = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			
			String sql = "INSERT INTO community VALUES (? ,COM_SEQ.NEXTVAL,?, ?, ?, SYSDATE)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, Cago);
			pstmt.setString(3, Title);
			pstmt.setString(4, Text);
						
			int result = pstmt.executeUpdate();
			
			if(result == 1) {
				System.out.println("게시물이 등록되었습니다.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return null;
	
	}

}
