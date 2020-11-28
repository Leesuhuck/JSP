<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%
	Connection conn = null; //연결된 DB객체를 잡고 있는 객체변수
	PreparedStatement ps = null; //SQL문을 실행시키는 동작을 하는 객체
	
	
	String driver="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/method?serverTimezone=UTC";
	String id = request.getParameter("id");
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"root","1111");
		String sql = "delete from member where id = ? ";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		int a = ps.executeUpdate();
		response.sendRedirect("memberSelect.jsp");
	
	}catch(Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>