<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");	
%>
	<h3>탈퇴를 위해 패스워드를 입력하세요</h3>
	<form action="delProcess.jsp" method="post">
	
		<!-- 사용자 모르게 가져오는 타입 hidden -->
		<input type="hidden" name="id" value="<%=id%>"/>
		<input type="password" name="pass"/>
		<input type="submit" value="탈퇴신청"/>
		
		<!-- 이전페이지 histroy.back() -->
		<input type="button" value="취소" onClick="history.back()"/>
	</form>
</body>
</html>