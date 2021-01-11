<%@page import="com.bk.BusInfo.BusInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	HttpSession session1 = request.getSession();
	String column = (String)session1.getAttribute("column");
	String row = (String)session1.getAttribute("row");
	String location = (String)session1.getAttribute("location");
	String chk_info = (String)session1.getAttribute("chk_info");
	
	BusInfo businfo = new BusInfo(location, chk_info);
	String time = businfo.getTime();
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
    <title>결제창1</title>
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
            font-weight: normal;
            border-bottom: 1px solid #ccc;
        }

        .join {
            width: 70px;
            height: 35px;
            margin-top: 30px;
            border: 1px solid #a97228;
            font-weight: bold;
            color: #462d0c;
            background-color: #a9712830;
            border-radius: 20px;
        }

        .join:hover {
            color: #fff;
            background-color: #a9712890;
        }

        .contain {
            margin: 0 auto;
            text-align: center;
            width: 300px;
            height: 340px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -150px;
            margin-top: -170px;
        }

        .table {
            padding-left: 15px;
        }
    </style>
</head>

<body style="font-family:Noto Sans KR;">
    <div class="contain">
        <p class="main">선택사항 확인</p>

        <div class="table">
            <table class="type05">
                <tr>
                    <th scope="row">지역</th>
                    <td><%=location%></td>
                </tr>
                <tr>
                    <th scope="row">출발시간</th>
                    <td><%=time%></td>
                </tr>
                <tr>
                    <th scope="row">좌석</th>
                    <td><%=row%><%=column%></td>
                </tr>
                <tr>
                    <th scope="row">가격</th>
                    <td>4500원</td>
                </tr>
                <tr>
                    <th scope="row">티켓정보</th>
                    <td>일일권</td>
                </tr>
            </table>
        </div>

        <form action="Reserve1" method="get">
            <input class="join" type="submit" value="다음"><br>
        </form>
</body>

</html>