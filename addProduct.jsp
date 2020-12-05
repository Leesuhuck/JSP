<%@ page contentType="text/html; charset=utf-8"%>
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
		<form name="newProduct" action="addProcess.jsp"  method="post" 
		enctype="multipart/form-data">
		<table>
			<tr>
				<td><label>상품아이디</label></td>
				<td><input type="text"  name="p_id"></td>				
			</tr>
			<tr>
				<td><label>상품명</label></td>
				<td><input type="text" name="p_name"></td>				
			</tr>
			<tr>
				<td><label>상품가격</label></td>
				<td><input type="text" name="p_unitPrice">	</td>			
			</tr>
			<tr>
				<td><label>상품설명</label></td>				
				<td><textarea name="p_descript" cols="50" rows="2"></textarea>	</td>			
			</tr>
			<tr>
				<td><label>범주</label>		</td>		
				<td><input type="text" name="p_category" >	</td>			
			</tr>
			<tr>
				<td><label>제조사</label></td>
				<td><input type="text" name="p_manufact" >	</td>		
			</tr>			
			<tr>
				<td><label >재고량</label>			</td>	
				<td><input type="text" name="p_unitsStock">	</td>			
			</tr>
			<tr>
				<td><label>제품상태</label>				
				<td><input type="radio" name="condition" value="new">신상품
				<input type="radio" name="condition" value="old">중고상품
				<input type="radio" name="condition" value="refur">리퍼상품	</td>			
			</tr>
			<tr>
				<td><label>이미지파일</label>		</td>		
				<td><input type="file" name="p_fileName" >	</td>			
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
