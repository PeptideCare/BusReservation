<%@page import="com.bk.Dto.cDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bk.Dao.cDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	cDao cdao = new cDao();
	ArrayList<cDto> list = cdao.select();
	int seq[] = {0,0,0,0,0,0,0,0,0,0};
	String cago[] = {" "," "," "," "," "," "," ", " ", " ", " "};
	String title[] = {" "," "," "," "," "," "," ", " ", " ", " "};
	String text[] = {" "," "," "," "," "," "," ", " ", " ", " "};
	String mId[] = {" "," "," "," "," "," "," ", " ", " ", " "};
	
	for (int i = 0; i < list.size(); i++) {
		cDto cdto = list.get(i);
		seq[i] = cdto.getSeq();
		cago[i] = cdto.getCago();
		title[i] = cdto.getTitle();
		text[i] = cdto.getText();
		mId[i] = cdto.getmId();
	}
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
    <title>게시판</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');

        .sub_news,
        .sub_news th,
        .sub_news td {
            border: 0
        }

        .sub_news a {
            color: #383838;
            text-decoration: none
        }

        .sub_news {
            width: 300px;
            border-bottom: 1px solid #999;
            color: #666;
            font-size: 12px;
            table-layout: fixed;
        }

        .sub_news th {
            padding: 5px 0 6px;
            border-top: solid 1px #999;
            border-bottom: solid 1px #b2b2b2;
            background-color: #f1f1f4;
            color: #333;
            font-weight: bold;
            line-height: 20px;
            vertical-align: top;
        }

        .sub_news td {
            padding: 8px 0 9px;
            border-bottom: solid 1px #d2d2d2;
            text-align: center;
            line-height: 18px;
        }

        .sub_news .title {
            width: 70%;
            text-align: left;
            padding-left: 15px;
            font-size: 13px;
        }

        .contain {
			margin:0 auto;
			text-align: center;
			width:300px;
			height:400px;
			position:absolute;
			left:50%;
			top:50%;
			margin-left:-150px;
			margin-top:-200px;
        }
        
		.join{
			width: 80px;
			height: 32px;
			margin-top: 10px;
            margin-left: 240px;
			border: 1px solid #a97228;
			font-weight: bold;
			color: #462d0c;
			background-color: #a9712830;
		}
		
		.join:hover{
			color: #fff;
			background-color: #a9712890;
		}
    </style>
</head>

<body style="font-family:Noto Sans KR;">
    <div class="contain">
        <span style="font-family: S-CoreDream-8Heavy; font-size: 24px;">건의함</span>
        <br><br>
        <table class="sub_news" border="1" cellspacing="0">
            <caption></caption>
            <colgroup>
                <col width=15%>
                <col width=20%>
                <col width=65%>
                <col width=20%>
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">카테고리</th>
                    <th scope="col">제목</th>
                    <th scope="col">글쓴이</th>
                </tr>
            </thead>
            <tbody>
                <tr class="title">
                    <td class="num"><a href="#"><%=seq[0]%></a></td>
                    <td class="cate"><a href="#"><%=cago[0]%></a></td>
                    <td class="Title"><a href="#"><%=title[0]%></a></td>
                    <td class="Id"><a href="#"><%=mId[0]%></a></td>
                </tr>
                <tr class="title">
                    <td class="num"><a href="#"><%=seq[1]%></a></td>
                    <td class="cate"><a href="#"><%=cago[1]%></a></td>
                    <td class="Title"><a href="#"><%=title[1]%></a></td>
                     <td class="Id"><a href="#"><%=mId[1]%></a></td>
                </tr>
                <tr class="title">
                    <td class="num"><a href="#"><%=seq[2]%></a></td>
                    <td class="cate"><a href="#"><%=cago[2]%></a></td>
                    <td class="Title"><a href="#"><%=title[2]%></a></td>
                     <td class="Id"><a href="#"><%=mId[2]%></a></td>
                </tr>
                <tr class="title">
                    <td class="num"><a href="#"><%=seq[3]%></a></td>
                    <td class="cate"><a href="#"><%=cago[3]%></a></td>
                    <td class="Title"><a href="#"><%=title[3]%></a></td>
                     <td class="Id"><a href="#"><%=mId[3]%></a></td>
                </tr>
                <tr class="title">
                    <td class="num"><a href="#"><%=seq[4]%></a></td>
                    <td class="cate"><a href="#"><%=cago[4]%></a></td>
                    <td class="Title"><a href="#"><%=title[4]%></a></td>
                     <td class="Id"><a href="#"><%=mId[4]%></a></td>
                </tr>
                <tr class="title">
                    <td class="num"><a href="#"><%=seq[5]%></a></td>
                    <td class="cate"><a href="#"><%=cago[5]%></a></td>
                    <td class="Title"><a href="#"><%=title[5]%></a></td>
                     <td class="Id"><a href="#"><%=mId[5]%></a></td>
                </tr>
            </tbody>
        </table>
        <input type="button" class="join" value="글쓰기" onclick="location.href='list2.jsp'">
		<input type="button" class="join" value="뒤로가기" onclick="location.href='Main.jsp'">
    </div>
</body>

</html>