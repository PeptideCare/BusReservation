<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
    <title>결제창2</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');

        @font-face {
            font-family: 'S-CoreDream-8Heavy';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
            font-weight: normal;
            font-style: normal;
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
            font-weight: bold;
            font-size: 14px;
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

        .marb {
            margin-bottom: 10px;
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

        .join {
            width: 120px;
            height: 32px;
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
			margin:0 auto;
			text-align: center;
			width:300px;
			height:280px;
			position:absolute;
			left:50%;
			top:50%;
			margin-left:-150px;
			margin-top:-140px;
        }
    </style>
</head>

<body style="font-family:Noto Sans KR;">
    <form action="Reserve2" method="get">
        <div class="contain">
		<span style="font-family: S-CoreDream-8Heavy; font-size: 24px;">결제하기</span>
		<br><br>
		
            <div class="checks small">
                <input type="radio" name="chk_method" value="카드" id="ex_rd1">
                <label for="ex_rd1" class="marb">카드</label>
                <br>
                <input type="radio" name="chk_method" value="무통장입금" id="ex_rd2">
                <label for="ex_rd2" class="marb">무통장입금</label>
                <br>
                <input type="radio" name="chk_method" value="핸드폰" id="ex_rd3">
                <label for="ex_rd3" class="marb">핸드폰</label>
            </div>
            <br>

            <select name="cupon" class="b c l">
                <option value="none" disabled selected class="l">(쿠폰 선택)</option>
                <option value="쿠폰1">쿠폰1</option>
                <option value="쿠폰2">쿠폰2</option>
                <option value="쿠폰3">쿠폰3</option>
            </select>

            <br>
            <input class="join" type="submit" value="결제하기" name="choice_time">

    </form>
</body>

</html>