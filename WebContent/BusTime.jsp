<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
	<title>예약화면</title>
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

		table.type06 {
			border-collapse: collapse;
			text-align: center;
			line-height: 1.5;
			font-size: 14px;
			border-top: 1px solid #ccc;
			border-bottom: 1px solid #ccc;
		}

		table.type06 th {
			width: 150px;
			padding: 5px;
			font-weight: bold;
		}

		table.type06 td {
			width: 50px;
			padding: 5px;
			border-left: 1px solid #ccc;
		}

		table.type06 .even {
			background: #efefef;
		}

		.bold {
			font-weight: bold;
			border-bottom: 1px solid #ccc;
		}

		.b {
			width: 200px;
			height: 30px;
			background: 180px center no-repeat;
			border: 1px solid #a97228;
		}

		.l {
			font-size: 14px;
			color: #a97228;
			top: 13px;
			left: 12px;
			letter-spacing: 1px;
		}

		.l2 {
			font-size: 16px;
			color: #a97228;
		}

		.c {
			width: 150px;
			height: 35px;
			min-height: 35px;
			line-height: 35px;
			padding: 0 10px;
			opacity: 100;
			filter: alpha(opacity=0);
		}

		.checks {
			position: relative;
		}

		.checks input[type="radio"] {
			position: absolute;
			width: 1px;
			height: 1px;
			padding: 0;
			margin: -1px;
			overflow: hidden;
			clip: rect(0, 0, 0, 0);
			border: 0;
		}

		.checks input[type="radio"]+label {
			display: inline-block;
			position: relative;
			padding-left: 30px;
			cursor: pointer;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
		}

		.checks input[type="radio"]+label:before {
			content: '';
			position: absolute;
			left: 0;
			top: -4px;
			width: 21px;
			height: 21px;
			text-align: center;
			background: #fafafa;
			border: 1px solid #cacece;
			border-radius: 100%;
			box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px rgba(0, 0, 0, 0.05);
		}

		.checks input[type="radio"]+label:active:before,
		.checks input[type="radio"]:checked+label:active:before {
			box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px rgba(0, 0, 0, 0.1);
		}

		.checks input[type="radio"]:checked+label:before {
			background: #E9ECEE;
			border-color: #adb8c0;
		}

		.checks input[type="radio"]:checked+label:after {
			content: '';
			position: absolute;
			top: 1px;
			left: 5px;
			width: 13px;
			height: 13px;
			background: #99a1a7;
			border-radius: 100%;
			box-shadow: inset 0px 0px 10px rgba(0, 0, 0, 0.3);
		}

		.checks.small input[type="radio"]+label {
			font-size: 12px;
			padding-left: 25px;
		}

		.checks.small input[type="radio"]+label:before {
			top: -2px;
			width: 17px;
			height: 17px;
		}

		.checks.small input[type="radio"]:checked+label:after {
			top: 3px;
			width: 9px;
			height: 9px;
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

		.join:hover {
			color: #fff;
			background-color: #a9712890;
		}

		.contain {
			margin: 0 auto;
			text-align: center;
			width: 300px;
			height: 610px;
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -150px;
			margin-top: -305px;
		}

		.table2 {
			padding-left: 10px;
		}
	</style>
</head>

<body style="font-family:Noto Sans KR;">
	<form action="BusTime" , method="get">


		<div class="contain">
			<p class="main">버스시간표</p>
			<div class="table2">
				<table class="type06">
					<tr>
						<th scope="row" class="even bold">지역</th>
						<td class="even bold">등교</td>
						<td class="even bold">하교</td>
					</tr>
					<tr>
						<th scope="row">영등포</th>
						<td>07:00</td>
						<td>18:10</td>
					</tr>
					<tr>
						<th scope="row" class="even">교대(강남) </th>
						<td class="even">07:30</td>
						<td class="even">18:10</td>
					</tr>
					<tr>
						<th scope="row">잠실</th>
						<td>07:00</td>
						<td>18:10</td>
					</tr>
					<tr>
						<th scope="row" class="even">분당-성남</th>
						<td class="even">07:30</td>
						<td class="even">18:10</td>
					</tr>
					<tr>
						<th scope="row">죽전</th>
						<td>07:50</td>
						<td>18:10</td>
					</tr>
					<tr>
						<th scope="row" class="even">인천(문학경기장)</th>
						<td class="even">06:40</td>
						<td class="even">18:10</td>
					</tr>
					<tr>
						<th scope="row">안산(중앙역)</th>
						<td>07:00</td>
						<td>18:10</td>
					</tr>
					<tr>
						<th scope="row" class="even">안산(상록수역)</th>
						<td class="even">07:10</td>
						<td class="even">18:10</td>
					</tr>
					<tr>
						<th scope="row">범계</th>
						<td>07:00</td>
						<td>18:10</td>
					</tr>
					<tr>
						<th scope="row" class="even">수원(법원사거리)</th>
						<td class="even">07:40</td>
						<td class="even">18:10</td>
					</tr>
					<tr>
						<th scope="row">수원(영통입구)</th>
						<td>07:50</td>
						<td>18:10</td>
					</tr>
				</table>
			</div>

			<br>

			<div class="checks small">
				<select name="location" class="b c l">
					<option value="none" disabled selected class="l">(지역선택)</option>
					<option value="영등포" class="l">영등포</option>
					<option value="교대(강남)" class="l">교대(강남)</option>
					<option value="잠실" class="l">잠실</option>
					<option value="분당-성남" class="l">분당-성남</option>
					<option value="죽전" class="l">죽전</option>
					<option value="인천(문학경기장)" class="l">인천(문학경기장)</option>
					<option value="송내" class="l">송내</option>
					<option value="안산(중앙역)" class="l">안산(중앙역)</option>
					<option value="안산(상록수역)" class="l">안산(상록수역)</option>
					<option value="범계" class="l">범계</option>
					<option value="수원(법원사거리)" class="l">수원(법원사거리)</option>
					<option value="수원(영통입구)" class="l">수원(영통입구)</option>
				</select>
				&nbsp&nbsp
				<input type="radio" name="chk_info" value="등교" id="ex_rd1">
				<label for="ex_rd1" class="l2">등교</label>
				&nbsp
				<input type="radio" name="chk_info" value="하교" id="ex_rd2">
				<label for="ex_rd2" class="l2">하교</label>
			</div>

			<br>

			<input class="join" type="submit" value="예매하기" name="choice_time">
		</div>
	</form>
</body>

</html>