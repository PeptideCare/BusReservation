package com.bk.Dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bk.Dto.mDto;

// 멤버 다오 클래스

public class mDao {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##scott";
	String pw = "tiger";
	
	public mDao() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	// Select
	
	public ArrayList<mDto> select(String where) {
		
		ArrayList<mDto> list = new ArrayList<mDto>();
		
		java.sql.Connection con = null;
		java.sql.PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			String sql = "SELECT * FROM member WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, where);
			res = pstmt.executeQuery();
			
			
			while(res.next()) {
				String Name = res.getString("NAME");
				String Id = res.getString("ID");
				String Pw = res.getNString("PASSWORD");
				
				mDto mdto = new mDto(Name, Id, Pw);
				list.add(mdto);
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
	
	public ArrayList<mDto> insert(String mName, String mId, String mPassword) {
		
		java.sql.Connection con = null;
		java.sql.PreparedStatement pstmt = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			
			String sql = "INSERT INTO member VALUES (?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mName);
			pstmt.setString(2, mId);
			pstmt.setString(3, mPassword);
						
			int result = pstmt.executeUpdate();
			
			if(result == 1) {
				System.out.println(mName + "님이 회원가입을 하셨습니다.");
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
	
	public ArrayList<mDto> update(String mName, String mId, String Pw, String NewPass){
		java.sql.Connection con = null;
		java.sql.PreparedStatement pstmt = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			
			String sql = "UPDATE member SET password = ? WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, NewPass);
			pstmt.setString(2, mId);
			
			int result = pstmt.executeUpdate();
			
			if(result == 1) {
				System.out.println(mName + "님이 비밀번호를 변경하였습니다.");
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
