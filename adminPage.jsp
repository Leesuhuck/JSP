<%@ page language="java" contentType="text/html; charset=UTF-8"%>
 <%
 	String pagefile=request.getParameter("page");
 	if (pagefile==null){pagefile="products.jsp";}
 %>
<%		
	if (!((String)session.getAttribute("id")).equals("admin")) {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}	
%>
<html>
<head>
<title> 관리자모드(상품관리)</title>
</head>
<body>
<table id = "main">
	<tr>
		<td height="43" colspan=3 align=left>
			<jsp:include page="top.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td width="15%" align=right valign=top><br>
			<p><a href="./products.jsp">상품 목록</a>
			<p><a href="./addProduct.jsp">상품 등록</a>
		</td>
		<td colspan=2 align=center>
			<jsp:include page='<%=pagefile %>'></jsp:include>
		</td>
	</tr>
	<tr>
		<td width="100%" height="40" colspan="3">
			<jsp:include page="bottom.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>
