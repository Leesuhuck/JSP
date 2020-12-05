<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String p_id				= request.getParameter("p_id");
	String p_name			= request.getParameter("p_name");
	String p_unitPrice		= request.getParameter("p_unitPrice");
	String p_descript		= request.getParameter("p_descript");
	String p_category		= request.getParameter("p_category");
	String p_manufact		= request.getParameter("p_manufact");
	String p_unitsStock		= request.getParameter("p_unitsStock");
	String p_condition		= request.getParameter("p_condition");
	String p_fileName		= request.getParameter("p_fileName");
	String origfilenames	= request.getParameter("origfilenames");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 확인</title>
</head>
<body>
	상품아이디 : <%=p_id %><br>
	상품명 : <%=p_name %><br>
	상품가격 : <%=p_unitPrice %><br>
	상품설명<br><%=p_descript %><br>
	범주 : <%=p_category %><br>
	제조사 : <%=p_manufact %><br>
	제고량 : <%=p_unitsStock %><br>
	제품상태 : <% %><br>
	이미지파일 : <a href = "file_down.jsp?file_name=<%=p_fileName %>"><%=origfilenames %></a>
	
</body>
</html>