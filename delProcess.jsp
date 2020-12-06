<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.sql.*" %>
 <%@ page import= "javax.naming.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass=request.getParameter("pass");
	
	System.out.println(id);
	System.out.println(pass);
	
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs = null;
	
	try{
		Context cp = new InitialContext();
		DataSource ds = (DataSource)cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		
		String sql = "select password from member where id = ?";
		ps=conn.prepareStatement(sql);
		ps.setString(1,id);
		rs = ps.executeQuery();
		
		//아이디와 일치할시
		if(rs.next()) {
			
			//패스워드가 같을시
			if(pass.equals(rs.getString("password"))){
				sql = "delete from member where id = ?";
				
				//sql업데이트
				ps=conn.prepareStatement(sql);
				
				//아이디 가져옴
				ps.setString(1,id);
				int a = ps.executeUpdate();
				
				//삭제가 원할하게 됬을시
				if(a!=0){
					
					session.invalidate();
					out.println("<script>");
					out.println("alert('삭제가 완료되었습니다!')");
					out.println("location.href='template.jsp'");
					out.println("</script>");
				}
			}
		}else{
			out.println("<script>");
			out.println("aleft('아이디 또는 비밀번호가 잘못되었습니다. 다시 로그인하세요')");
			
			//페이지 이동
			out.println("location.href='template.jsp'");
			out.println("</script>");
		}
		out.println("<script>");
		out.println("location.href='./template.jsp?page=loginForm.jsp'");
		out.println("</script>");
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	finally{
		if(ps !=null) ps.close();
		if(conn !=null) conn.close();
		/*
		try{
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e){
			e.printStackTrace();*/
	}
	%>