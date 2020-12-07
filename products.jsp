<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<html>
<head>
<title>상품 목록</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Playball&display=swap');
	body {
		background-image: url("data:image/jpeg;base64,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");
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
		font-family: 'Nanum Pen Script', cursive;
		font-family: 'Playball', cursive;
		
		}
	p{
		color:green;
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Playball&display=swap');
		font-family: 'Nanum Pen Script', cursive;
		font-family: 'Playball', cursive;
	}

#display1{
	margin : auto;
	width : 650px;
}
#img_style{ 
	width:150px; height:150px; 
	border:none; margin-top : 80px;
}

#td_style{
	text-align : center;	
}
</style>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String p_id = request.getParameter("p_id");
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
		<td width="15%" align=left valign=top><br>
			<a href="./template.jsp">홈페이지 돌아가기</a>
		</td>
		</tr>
		<tr>
	<%	int cnt = 0;	
		while (rs.next()){
		cnt ++;  
%>
			<td id = "td_style">			
			 	<img id="img_style" src="./MacBook/<%=rs.getString("p_fileName")%>" >
				<h3><%=rs.getString("p_name")%></h3>				
				<p><%=rs.getString("p_unitPrice")%>원
				<p><a href="./productlist.jsp?p_id=<%=rs.getString("p_id")%>">상세 정보 &raquo;</a>
				<p><a href="./update.jsp?p_id=<%=rs.getString("p_id")%>">상품수정 &raquo;</a>							
				<p><a href="./adminColDeleteProcess.jsp?p_id=<%=rs.getString("p_id")%>">상품삭제 &raquo;</a>
			</td>
<% 
			if(cnt%3==0){ 
				cnt=0;
				int count = rs.getInt("p_readCount");
				ps = conn.prepareStatement("update product set p_readCount =? where p_id = ?");
				ps.setInt(1,++count);
				ps.setString(2, p_id);
				ps.executeUpdate();
						} 
					}
%>
		</tr>
		<tr>
		</tr>
	</table>
<%
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if (rs != null)	rs.close();
		if (ps != null) ps.close();
		if (conn != null) conn.close();
	}
%>

</body>
</html>
