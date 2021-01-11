<%@page import="com.bk.bus.BusSeat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
	<title>대학교 통학버스 예약시스템</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');
		
		
		.join {
			width: 217px;
			height: 32px;
			margin-bottom: 5px;
			border: 1px solid #a97228;
			font-weight: bold;
			color: #462d0c;
			background-color: #a9712830;
		}

		.join:hover {
			color: #fff;
			background-color: #a9712890;
		}

		.contain {
			margin:0 auto;
			text-align: center;
			width:300px;
			height:290px;
			position:absolute;
			left:50%;
			top:50%;
			margin-left:-150px;
			margin-top:-80px;
		}
	</style>
</head>

<body style="font-family:Noto Sans KR;">
	<div class="contain">
		<input class="join" type="button" value="예매하기" onclick="location.href='BusTime.jsp'"><br>
		<form action="MyPage" method="get">
			<input class="join" type="submit" value="마이페이지"><br>
		</form>
		<input class="join" type="button" value="건의함" onclick="location.href='list1.jsp'"><br>
		<form action="mLogout" , method="get">
			<input class="join" type="submit" value="로그아웃">
		</form>
	</div>
	</form>
</body>

</html>