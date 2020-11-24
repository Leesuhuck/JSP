<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기소개</title>

<style>
	 .container {
        width: 500px;
        height: 500px;
        text-align: center;
      }
      #img {
        max-width: 100%;
		max-height: 100%;
		bottom: 0;
		left: max;
		margin: auto;
		overflow: auto;
		position: fixed;
		right: 0;
		top: 0;
      }
	table{
		text-align: center;
		font-size:150%;
	
	}
	.jun{
	color: red;
	}
	.ap{
	color: blue;
	}
	body{
	background-image: url('Web.jpg');
    background-repeat: no-repeat;
    background-size: 100%;
    backzround-attachment: fixed;
    display : block;
    margin : auto;
    max-width: 100%;
	max-height: auto;
	}
	button{
	float : right;
	}
</style>
</head>
<body>


<table border = "3" width = "80%"  align = "right">
	<tr>
		<td class=jun>이름</td>
		<td class=ap>이수혁</td>
	</tr>
	<tr>
		<td class=jun>나이</td>
		<td class=ap>22세</td>
	</tr>
	<tr>
		<td class=jun>신분</td>
		<td class=ap>대학생</td>
	</tr>
	<tr>
		<td class=jun>직업목표</td>
		<td class=ap>웹/앱 플랫폼 개발자</td>
	</tr>
	<tr>
		<td class=jun>희망하는 언어</td>
		<td>
		<input type="checkbox" />Java
		<input type="checkbox" />Python
		<input type="checkbox" />Html,CSS,Javascript
		<input type="checkbox" />PHP
		<input type="checkbox" />Jango
		<input type="checkbox" />MySQL
		<input type="checkbox" />JSP
		<input type="checkbox" />android
		<input type="checkbox" />Spring
		</td>
	</tr>
	<tr>
		<td class=jun>현 상황</td>
		<td class=ap>아직 자바도 제대로 못다루는 노력인 입니다;</td>
	</tr>
</table>
	  <div class="container">
    	<img id="img" src="main.png" />
   		 <button onclick="toggleImg()">감사합니다</button>
	  </div>
  <script>
    function toggleImg() {
      document.getElementById("img").src = "sub.jpg";
    }
  </script>
</body>
</html>