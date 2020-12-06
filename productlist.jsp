<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%@ page import="javax.sql.*"%>

<%@ page import="javax.naming.*"%>

<html>

<head>

<title>상품 목록</title>

<style type="text/css">
#display1 {
	margin: auto;
	width: 650px;
}

#img_style {
	width: 150px;
	height: 150px;
	border: none;
	margin-top: 80px;
}

​
	
	#td_style {
	text-align: center;
}
</style>

</head>

<body>

	​

	<%

	Connection conn = null;
	
	PreparedStatement ps = null;
	
	ResultSet rs = null;

	try{
	
		Context init = new InitialContext();
		
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/method");
		
		conn = ds.getConnection();
		
		String sql = "select * from product";
		
		ps = conn.prepareStatement(sql);
		
		rs = ps.executeQuery();

%>

	<table id="display1">

		<tr>

			<% int cnt = 0; 
	
		while (rs.next()){
		
		cnt ++; 
	
	%>

			<td id="td_style"><img id="img_style"
				src="./MacBook/<%=rs.getString("p_fileName")%>">

				<h3><%=rs.getString("p_name")%></h3>

				<p><%=rs.getString("p_unitPrice")%>원
				<p>
					<a href="./product.jsp?id=<%=rs.getString("p_id")%>">상세 정보 »</a></td>

			<% 

	if(cnt%4==0){ 
	
	cnt=0;

%>

		</tr>
		<tr>

			<%

	} 
	
	} 

%>

		</tr>

	</table>

	<%

	}catch(Exception e){
	
		e.printStackTrace();
	
	}

	finally{
	
		if (rs != null) rs.close();
		
		if (ps != null) ps.close();
		
		if (conn != null) conn.close();
	
	}

%>

</body>

</html>