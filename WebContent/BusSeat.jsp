<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
    <title>버스 좌석</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');

        @font-face {
            font-family: 'S-CoreDream-8Heavy';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-8Heavy.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        
        .table {
            border-spacing: 0px;
            border: 1px solid gray;
        }

        .td {
            border: 1px solid gray;
        }

        .ver {
            float: left;
        }

        .res {
            background-color: lightgray;
        }

        .pad {
            margin-left: 5px;
        }

        td {
            text-align: center;
            font-weight: bolder;
            padding-right: 10px;
        }

        th {
            text-align: center;
            font-weight: bolder;
            padding-bottom: 10px;
        }

        .clr {
            clear: both;
        }

        .padd {
            padding: 4px;
        }

        .margintb {
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .but {
            width: 80px;
            padding: 5px;
            margin-bottom: 5px;
        }

        .b {
            width: 110px;
            height: 35px;
            background: 110px center no-repeat;
            border: 1px solid #a97228;
        }

        .l {
            font-size: 14px;
            color: #a97228;
            top: 13px;
            left: 12px;
            letter-spacing: 1px;
        }

        .c {
            width: 110px;
            height: 35px;
            min-height: 35px;
            line-height: 35px;
            padding: 0 10px;
            opacity: 100;
            filter: alpha(opacity=0);
        }


        .join {
            width: 70px;
            height: 35px;
            margin-bottom: 5px;
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
			height: 610px;
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -150px;
			margin-top: -305px;
        }

        .table2 {
			padding-right: 25px;
        }
    </style>
</head>

<body style="font-family:Noto Sans KR;">
    <div class="contain">
        <span style="font-family: S-CoreDream-8Heavy; font-size: 24px;">좌석 선택</span>
        <br><br>
        <div class="table2">
            <table border="0" width=265 height=30>
                <th width=30></th>
                <th width=45>A</th>
                <th width=45>B</th>
                <th width=30></th>
                <th width=45>C</th>
                <th width=45>D</th>
            </table>
            <table class="ver" border="0" width=30 height=450>
                <tr>
                    <td>1</td>
                </tr>
                <tr>
                    <td>2</td>
                </tr>
                <tr>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                </tr>
                <tr>
                    <td>5</td>
                </tr>
                <tr>
                    <td>6</td>
                </tr>
                <tr>
                    <td>7</td>
                </tr>
                <tr>
                    <td>8</td>
                </tr>
                <tr>
                    <td>9</td>
                </tr>
                <tr>
                    <td>10</td>
                </tr>
                <tr>
                    <td>11</td>
                </tr>
                <tr>
                    <td>12</td>
                </tr>
            </table>
            <table class="table ver" border="1" width=100 height=450>
                <tr>
                    <td class="res"></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <table class="ver" border="0" width=30>
                <tr></tr>
            </table>
            <table class="table ver" border="1" width=100 height=450>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <form action="BusSeat" method="get">
            <div class="clr">
                <br>
                <select name="column" class="b c l">
                    <option value="none" disabled selected class="l">(행 선택)</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                </select>
                &nbsp
                <select name="row" class="b c l">
                    <option value="none" disabled selected class="l">(열 선택)</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
                <br>
                <br>
                <input class="join" type="submit" value="선택" name="choice_time">

            </div>
        </form>
</body>

</html>