<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<h2>${category.isEdit ? 'Edit Category' :'Add New Category' }</h2>

<form action="/admin/categories/save" method="post">
	<input type="hidden" value ="${category.isEdit }" name="isEdit">
	
	<input type="hidden" value ="${category.id }" name ="id">
	
	<label>Category Name</label><br> 
	<input type="text" name="name" value="${category.name }"><br>
	
	<label>Images</label><br> 
	<input type="text" name="image" value="${category.image }"><br>
	
	<label>Status</label><br> 
	<input type="text" name="status" value="${category.status }"><br>
		
	<c:if test="${category.isEdit }">
		<input type="submit" value="Update">
	</c:if>
	<c:if test="${!category.isEdit }">
		<input type="submit" value="Insert">
	</c:if>

</form>