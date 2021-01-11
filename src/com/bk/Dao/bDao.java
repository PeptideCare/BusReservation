package com.bk.Dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bk.Dto.bDto;
import com.sun.corba.se.pept.transport.Connection;

public class bDao {
	
	// 오라클 데이터베이스 드라이버 연결
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##scott";
	String pw = "tiger";
	
	public bDao() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<bDto> select(String mId) {
		ArrayList<bDto> list = new ArrayList<bDto>();
		
		java.sql.Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			String sql = "SELECT * FROM TICKET WHERE mId = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mId);
			res = pstmt.executeQuery();
			
			while(res.next()) {
				String location = res.getString("location");
				String chk_info = res.getString("method");
				String row = res.getString("seatrow");
				String column = res.getString("seatcolumn");
				
				bDto bdtd = new bDto(mId, location, chk_info, column, row);
				list.add(bdtd);
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
	
	public ArrayList<bDto> insert(String mId, String location, String chk_info, String column, String row){
		
		java.sql.Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			String sql = "INSERT INTO TICKET VALUES (?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, location);
			pstmt.setString(3, chk_info);
			pstmt.setString(4, column);
			pstmt.setString(5, row);
			int result = pstmt.executeUpdate();
			
			if (result == 1) {
				System.out.println("티켓 등록이 완료되었습니다.");
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
