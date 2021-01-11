<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)request.getAttribute("id");
	String pw = (String)request.getAttribute("pw");
	String name = (String)request.getAttribute("name");
%>


<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
	<title>마이페이지</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');

        @font-face {
            font-family: 'S-CoreDream-8Heavy';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        

		.main {
			font-family: S-CoreDream-8Heavy;
			font-size: 24px;
		}
		
		table.type05 {
			border-collapse: separate;
			border-spacing: 1px;
			font-size: 14px;
			text-align: center;
			line-height: 1.5;
			border-top: 1px solid #ccc;
		}

		table.type05 th {
			width: 100px;
			padding: 5px;
			font-weight: bold;
			border-bottom: 1px solid #ccc;
			background: #efefef;
		}

		table.type05 td {
			width: 150px;
			padding: 5px;
			border-bottom: 1px solid #ccc;
		}

		.join {
			width: 270px;
			height: 32px;
			margin-bottom: 5px;
			border: 1px solid #a97228;
			font-weight: bold;
			color: #462d0c;
			background-color: #a9712830;
		}

		.join2 {
			width: 100px;
			height: 32px;
			margin-top: 5px;
			margin-bottom: 25px;
			margin-left: 170px;
			border: 1px solid #a97228;
			font-weight: bold;
			color: #462d0c;
			background-color: #a9712830;
		}

		.join:hover,
		.join2:hover {
			color: #fff;
			background-color: #a9712890;
		}

		.table {
			padding-left: 15px;
		}

		.contain {
			margin: 0 auto;
			text-align: center;
			width: 300px;
			height: 380px;
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -150px;
			margin-top: -190px;
		}
	</style>
</head>

<body style="font-family:Noto Sans KR;">
	<div class="contain">
		<p class="main">마이페이지</p>
		<div class="table">
			<table class="type05">
				<tr>
					<th scope="row">이름</th>
					<td><%=name%></td>
				</tr>
				<tr>
					<th scope="row">학번</th>
					<td><%=id%></td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td><%=pw%></td>
				</tr>
			</table>
		</div>

		<button class="join2" id="btn" name="chage_password" onclick="location.href='ChangePw.jsp'">비밀번호변경</button><br>

		<br>
		<form action="Ticket" method="get">
			<input class="join" type="submit" value="내가 예매한 티켓"><br>
		</form>
	</div>
</body>

</html>