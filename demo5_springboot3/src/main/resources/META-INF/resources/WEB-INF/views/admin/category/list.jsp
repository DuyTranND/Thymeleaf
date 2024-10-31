<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<a href="/admin/categories/add">Add New Category</a>
<table border="1" width="100%">

	<tr>
		<th>STT</th>
		<th>Images</th>
		<th>Category name</th>
		<th>Status</th>
		<th>Action</th>
	</tr>
	<c:forEach items="${list}" var="cate" varStatus="stt">
		<tr>
			<td>${stt.index+1 }</td>
			<td>${cate.image }</td>
			<td>${cate.name }</td>
			<td>${cate.status }</td>
			<td>
				<a href="/admin/categories/edit/${cate.id }">Update</a>
				<a href="/admin/categories/delete/${cate.id }">Delete</a>
			</td>
		</tr>
		
		
	
	</c:forEach>

</table>