<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.sql.*" %>
 <%@ page import= "javax.naming.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass=request.getParameter("pass");
	String name=request.getParameter("name");
	int age=Integer.parseInt(request.getParameter("age"));
	String gender=request.getParameter("sex");
	String email=request.getParameter("email");
	
	Connection conn=null;
	PreparedStatement ps=null;
//	ResultSet rs = null;
	
	try{
		Context cp = new InitialContext();
		DataSource ds = (DataSource)cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		
		String sql = "insert into member values(?,?,?,?,?,?)";
		
		ps=conn.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2,pass);
		ps.setString(3,name);
		ps.setInt(4,age);
		ps.setString(5,gender);
		ps.setString(6,email);
		int a = ps.executeUpdate();
		
		if(a != 0) {
			out.println("<script>");
			out.println("location.href='./template.jsp?page=loginForm.jsp'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("location.href='./template.jsp?page=joinForm.jsp'");
			out.println("</script>");
		}
	
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	finally{
		if(ps !=null) ps.close();
		if(conn !=null) conn.close();
	}
	%>