<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import = "java.util.*" %>
<% 
	String uploadPath = request.getRealPath("/upload");

	int size = 10*1024*1024;
	String p_id 		= "";
	String p_name 		= "";
	String p_unitPrice	= "";
	String p_descript 	= "";
	String p_category 	= "";
	String p_manufact	= "";
	String p_unitsStock	= "";
	String condition	= "";
	String p_fileName	= "";
	
	String origfilenames ="";
			
	try{
		MultipartRequest multi = new MultipartRequest(request,
													uploadPath,
													size,
													"UTF-8",
													new DefaultFileRenamePolicy());
		
		p_id = multi.getParameter("p_id");
		p_name = multi.getParameter("p_name");
		p_unitPrice = multi.getParameter("p_unitPrice");
		p_descript = multi.getParameter("p_descript");
		p_category = multi.getParameter("p_category");
		p_manufact = multi.getParameter("p_manufact");
		p_unitsStock = multi.getParameter("p_unitsStock");
		condition = multi.getParameter("condition");
		
		Enumeration files = multi.getFileNames();
		String setfile = (String)files.nextElement();
		p_fileName = multi.getFilesystemName(setfile);
		origfilenames = multi.getOriginalFileName(p_fileName);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<html>
<head>
<title>상품 등록</title>
</head>
<body>
<div>
			<ul>
				<li><a href="./products.jsp">상품 목록</a></li>
				<li><a href="./addProduct.jsp">상품 등록</a></li>
				<li><a href="./editProduct.jsp?edit=update">상품 수정</a></li>
				<li><a href="./editProduct.jsp?edit=delete">상품 삭제</a></li>			
			</ul>
			<hr><br><br>
	</div>	

	<div>	
		<H2> 상품 등록폼 </H2>
		<form name="newProcess" action="addFileCheck.jsp"  method="post" 
		enctype="multipart/form-data">
		<table>
			<tr>
				<td><label>상품아이디</label></td>
				<td><input type="text"  name="p_id" value="<%=p_id %>"></td>				
			</tr>
			<tr>
				<td><label>상품명</label></td>
				<td><input type="text" name="p_name" value="<%=p_name %>"></td>				
			</tr>
			<tr>
				<td><label>상품가격</label></td>
				<td><input type="text" name="p_unitPrice" value="<%=p_unitPrice %>"></td>			
			</tr>
			<tr>
				<td><label>상품설명</label></td>				
				<td><textarea name="p_descript" cols="50" rows="2" value="<%=p_descript %>"></textarea>	</td>			
			</tr>
			<tr>
				<td><label>범주</label>		</td>		
				<td><input type="text" name="p_category" value="<%=p_category %>" >	</td>			
			</tr>
			<tr>
				<td><label>제조사</label></td>
				<td><input type="text" name="p_manufact" value="<%=p_manufact %>" >	</td>		
			</tr>			
			<tr>
				<td><label >재고량</label>			</td>	
				<td><input type="text" name="p_unitsStock" value="<%=p_unitsStock %>">	</td>			
			</tr>
			<tr>
				<td><label>제품상태</label>				
				<td><input type="radio" name="condition" value="new">신상품
				<input type="radio" name="condition" value="old">중고상품
				<input type="radio" name="condition" value="refur">리퍼상품</td>			
			</tr>
			<tr>
				<td><label>이미지파일</label>		</td>		
				<td><input type="file" name="p_fileName" value="<%=p_fileName%>"></td>
				<input type="hideen" name="origfilenames" value="<%=origfilenames%>"/>			
			</tr>
			<tr>
				<td colspan="2"><input type="submit"  value="상품등록">
				<input type="reset"  value="다시쓰기"></td>
			</tr>
		</table>	
		</form>
	</div>

</body>
</html>
