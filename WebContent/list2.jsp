<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
    <title>글쓰기</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');

        @font-face {
            font-family: 'S-CoreDream-8Heavy';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        
        .b {
            width: 120px;
            height: 32px;
            background: 120px center no-repeat;
            border: 1px solid #a97228;
        }

        .l {
            font-size: 13px;
            color: #a97228;
            top: 13px;
            left: 12px;
            letter-spacing: 1px;
        }

        .c {
            width: 120px;
            height: 32 px;
            min-height: 32px;
            line-height: 32px;
            padding: 0 10px;
            opacity: 100;
            filter: alpha(opacity=0);
        }

        .input {
            width: 250px;
            height: 20px;
            padding: 5px;
            padding-left: 10px;
            margin-top: 10px;
            border: 1px solid #a97228;
            color: #a97228;
        }

        .input2 {
            width: 250px;
            padding: 5px;
            padding-left: 10px;
            margin-top: 10px;
            border: 1px solid #a97228;
            color: #a97228;
        }

        .join {
            width: 267px;
            height: 32px;
            margin-top: 10px;
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
			height:360px;
			position:absolute;
			left:50%;
			top:50%;
			margin-left:-150px;
			margin-top:-180px;
        }

        .mar {
            margin-right: 146px;
        }
    </style>
</head>

<form action="List1" method = "get">
<body style="font-family:Noto Sans KR;">
    <div class="contain">
		<span style="font-family: S-CoreDream-8Heavy; font-size: 24px;">글쓰기</span>
		<br><br>
        <select name="location" class="b c l mar">
            <option value="none" disabled selected class="l">(분야 선택)</option>
            <option value="시설" class="l">시설</option>
            <option value="시설2" class="l">시설2</option>
            <option value="시설3" class="l">시설3</option>
        </select>
        <br>
        <input type="text" name="title" class="input" required size="20" maxlength="20" placeholder="제목">
        <br>
        <textarea type="text" name="contents" class="input2" required rows="10" size="27" cols="32"
            placeholder="내용"></textarea>
        <br>
        <input class="join", type = "submit", value = "건의 등록">
    </div>

</body>
</form>

</html>