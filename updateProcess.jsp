<%@ page contentType="text/html; charset=utf-8"%>
 <%@ page import= "java.sql.*" %>
 <%@ page import= "javax.sql.*" %>
 <%@ page import= "javax.naming.*" %>
<%@ page import = "java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String p_id = request.getParameter("p_id");
	String p_name=request.getParameter("p_name");
	int p_unitPrice=Integer.parseInt(request.getParameter("p_unitPrice"));
	String p_descript=request.getParameter("p_descript");
	String p_category=request.getParameter("p_category");
	String p_manufact=request.getParameter("p_manufact");
	int p_unitsStock=Integer.parseInt(request.getParameter("p_unitsStock"));
	String condition=request.getParameter("condition");
	String p_fileName=request.getParameter("p_fileName");
	
	Connection conn = null;
	
	PreparedStatement prep = null;
	
	try{

		Context cp = new InitialContext();
		DataSource ds = (DataSource) cp.lookup("java:comp/env/jdbc/method");
		conn = ds.getConnection();
		prep = conn.prepareStatement("update product set p_id=?, p_name=?, p_untiPrice=?, p_descript=?, p_category=?, p_manufact, p_unitsStock, condition, p_fileName,where p_id = ?");
		
		prep.setString(1, p_id);
		prep.setString(2, p_name);
		prep.setInt(3, p_unitPrice);
		prep.setString(4, p_descript);
		prep.setString(5, p_category);
		prep.setString(6, p_manufact);
		prep.setInt(7, p_unitsStock);
		prep.setString(8, condition);
		prep.setString(9, p_fileName);
		
		int a = prep.executeUpdate();
		
		if(a != 0) {
			out.println("<script>");
			out.println("location.href='./template.jsp?page=updateProcess.jsp'");
			out.println("alert('수정이 완료되었습니다!')");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("location.href='./template.jsp?page=update.jsp'");
			out.println("alert('수정이 실패되었습니다!')");
			out.println("</script>");
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally{
		if(prep !=null) prep.close();
		if(conn !=null) conn.close();
	}
%>