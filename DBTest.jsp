<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.naming.*" %>
 <%@ page import= "javax.sql.*" %>
<%
	Connection conn = null;
	
	//String driver="com.mysql.jdbc.Driver";
	//String url = "jdbc:mysql://localhost:3306/method?serverTimezone=UTC";
		
	Boolean connect = true;
	
	try{
//		Class.forName(driver);
//		conn = DriverManager.getConnection(url,"root","1111");
//		conn.close();
		Context cp = new InitialContext();
		DataSource ds = (DataSource) cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		connect=true;
	}catch(Exception e) {
		connect=false;
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
<h3><% if(connect==true) { %>
	연결되었습니다.
	<%} else { %>
	연결에 실패하였습니다.
	<%} %>
</h3>
</body>
</html>