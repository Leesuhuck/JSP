<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
	<div>
		<ul>
			<li><a href="./products.jsp">상품 목록</a></li>
			<li><a href="./addProduct.jsp">상품 등록</a></li>
			<li><a href="./editProduct.jsp?edit=update">상품 수정</a></li>
			<li><a href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
		</ul>
	</div>
</body>
</html>
