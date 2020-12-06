<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
a {
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Playball&display=swap');
font-family: 'Nanum Pen Script', cursive;
font-family: 'Playball', cursive;
}
</style>
<%
	String id = null;
	id = (String) session.getAttribute("id");
	if(id !=null){ //인증승인경우 
	
		if(id.equals("admin")) {
			out.println("<script>");
			out.println("location.href='adminPage.jsp'");
			out.println("</script>");
		}
	
	%>
		
	<h3> <a href="./template.jsp?page=upFrom.jsp"><%=id %></a>님 로그인! </h3>
	<h4><a href = "logout.jsp">로그아웃</a></h4>	
	<h4><a href = "delete.jsp">삭제</a></h4>
<%	}else { // 인증거부경우
%>
 <a href="./template.jsp?page=loginForm.jsp">Login</a>
 <a href="./template.jsp?page=joinForm.jsp">join</a>
		
<%	} %>
