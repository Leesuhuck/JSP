<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.sql.*" %>
 <%@ page import= "javax.naming.*" %>
<%
	Connection conn = null; //연결된 DB객체를 잡고 있는 객체변수
	PreparedStatement ps = null; //SQL문을 실행시키는 동작을 하는 객체
	ResultSet rs = null; //select 결과를 담는 객체변수
	//String driver="com.mysql.jdbc.Driver";
	//String url = "jdbc:mysql://localhost:3306/method?serverTimezone=UTC";
	
	try{
		//Class.forName(driver);
		//conn = DriverManager.getConnection(url,"root","1111");
		Context cp = new InitialContext();
		DataSource ds = (DataSource) cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		String sql = "select * from member";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
	
	}catch(Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<Style>
table{
width:600px;
border : 1px solid #AAAAAA;
border-collapse :collapse;
}
tr, th, td{
width:600px;
}

</Style>
</head>
<body>
<table>
	<tr>
		<th>아이디</th>
	
		<th>비밀번호</th>
	
		<th>나이</th>
	
		<th>성별</th>

		<th>이메일</th>
	</tr>
	<% while(rs.next()){ %>
	<tr>
		<td><%= rs.getString("id")%></td>
		<td><%= rs.getString("password")%></td>
		<td> <%= rs.getString("name") %> </td>
		<td> <%= rs.getString("age") %> </td>
		<td> <%= rs.getString("gender") %> </td>
		<td> <%= rs.getString("email") %> </td>
		<td> <a href = "delete.jsp?id=<%= rs.getString("id")%>"> 삭제</a> </td>
	</tr> 
			<% } %>
	
</table>
</body>
</html>