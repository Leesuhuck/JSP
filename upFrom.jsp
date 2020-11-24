<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.sql.*" %>
 <%@ page import= "javax.naming.*" %>
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

<%
	String id = (String)session.getAttribute("id");

	request.setCharacterEncoding("UTF-8");
	
	String pass=request.getParameter("pass");
	
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs = null;
	
	try{
		Context cp = new InitialContext();
		DataSource ds = (DataSource)cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		
		String sql = "select * from member where id = ?";
		ps=conn.prepareStatement(sql);
		ps.setString(1,id);
		rs = ps.executeQuery();
		rs.next();
%>

	<section id ="formArea">
	<h1>회원정보 입력</h1>
	</section>
	<!-- <form action="joinchk.jsp" method="post"> -->
	<form name="upfrom" action="upProcess.jsp" method="post">
	<table>
		<tr>
			<td>아이디 :</td>
			<td><input type="text" name="id" value="<%=rs.getString("id")%>" id="id"/></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="pass" id="pass"></td>
		</tr>
		<tr>
			<td>이름 :</td>
			<td><input type="text" name="name" value="<%=rs.getString("name") %>" id="name"></td>
		</tr>
		<tr>
			<td>성별 : </td>
			<td>
			<% if(rs.getString("gender").equals("남")) { %>
			<input type="radio" name="sex" value="남" id="sex"checked id="sex1"/>남자
			<input type="radio" name="sex" value="여" id="sex2"checked/>여자
			<%} else { %>
			<input type="radio" name="sex" value="남" id="sex"checked/>남자
			<input type="radio" name="sex" value="여" id="sex2"checked id="sex2"/>여자
	<% } %>
			</td>
		</tr>
		<tr>
			<td>나이 : </td>
			<td><input type="text" name="age" value="<%=rs.getString("age") %>"id="age"></td>
		</tr>
		<tr>
			<td>이메일 주소 : </td>
			<td><input type="text" name="email" value="<%=rs.getString("email") %>" id= "email"></td>
		</tr>
		<tr>
			<td colspan="2">
			<a href="javascript:upform.submit()">정보수정</a>&nbsp;&nbsp;
			<a href=#>탈퇴</a>
			</td>
		</tr>
	</table>
</form>

<% } catch(Exception e) {
		e.printStackTrace();
	}
	finally{
		if(ps !=null) ps.close();
		if(conn !=null) conn.close();
	}
	%>
	
</body>
</html>