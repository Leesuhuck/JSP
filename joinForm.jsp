<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<style>
	#formArea{
	marign : auto;
	width:400px;
	border : 1px solid gray;
	text-align : center;
	}
	h1{
	text-align:center;
	}
	table{
	width:380px;
	margin:auto;
	text-align:center;
	}
</style>
</head>
<body>
	<section id ="formArea">
	<h1>회원정보 입력</h1>
	</section>
	<!-- <form action="joinchk.jsp" method="post"> -->
	<form name="joinform" action="joinProcess.jsp" method="post">
	<table>
		<tr>
			<td>아이디 :</td>
			<td><input type="text" name="id" id="id"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="pass" id="pass"></td>
		</tr>
		<tr>
			<td>이름 :</td>
			<td><input type="text" name="name" id="name"></td>
		</tr>
		<tr>
			<td>성별 : </td>
			<td>
			<input type="radio" name="sex" value="1" id="sex"checked/>남
			<input type="radio" name="sex" value="2"/>여
			</td>
		</tr>
		<tr>
			<td>나이 : </td>
			<td><input type="text" name="age" id="age"></td>
		</tr>
		<tr>
			<td>이메일 주소 : </td>
			<td><input type="text" name="email" id= "email"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="회원가입">
				<input type="reset" value="다시 작성">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>