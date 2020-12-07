<%@ page contentType="text/html; charset=utf-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.sql.*" %>
 <%@ page import= "javax.naming.*" %>
<%@ page import = "java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String p_id = request.getParameter("p_id");
	
	Connection conn = null;
	
	PreparedStatement prep = null;
	
	try{

		Context cp = new InitialContext();
		DataSource ds = (DataSource) cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		prep = conn.prepareStatement("delete from product where p_id = ?");
		
		prep.setString(1, p_id);
		
		int a = prep.executeUpdate();
		
		if(a != 0) {
			out.println("<script>");
			out.println("location.href='./template.jsp'");
			out.println("alert('삭제가 완료되었습니다!')");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('오류나왔습니다.!')");
			out.println("</script>");
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally{
		if(prep !=null) prep.close();
		if(conn !=null) conn.close();
	}
%>