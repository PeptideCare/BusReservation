<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
	<title>회원가입</title>
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
		
		.input {
			width: 200px;
			height: 20px;
			padding: 5px;
			padding-left: 10px;
			margin-bottom: 5px;
			border: 1px solid #a97228;
			color: #a97228;
			background-color: #a9722805;
		}

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
			margin: 0 auto;
			text-align: center;
			width: 300px;
			height:260px;
			position:absolute;
			left:50%;
			top:50%;
			margin-left:-150px;
			margin-top:-130px;
		}
	</style>
</head>

<body style="font-family:Noto Sans KR;">
	<form action="mJoin" , method="post">
		<div class="contain">
			<p class="main">회원가입</p>
			<input type="text" name="m_name" class="input" required size="20" maxlength="20" placeholder="이름">
			<br>
			<input type="text" name="m_id" class="input" required size="20" maxlength="10" placeholder="학번">
			<br>
			<input type="password" name="m_pass" class="input" required size="20" maxlength="20" placeholder="비밀번호">
			<br>
			<input class="join" type="submit" value="회원가입" name="resister">
		</div>
	</form>
</body>

</html>