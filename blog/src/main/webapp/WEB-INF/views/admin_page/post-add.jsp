<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<a href="${contextRoot}/admin/category" class="btn "></a>
<form:form class="form-horizontal" modelAttribute="post" method="POST" action="${contextRoot}/posts/add" enctype="multipart/form-data">
	<form:hidden path="id"/>
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4" for="title">Enter Category Name</label>
			<form:input type="text" id="title" path="title" placeholder="title"/>
			<form:errors path="title" ></form:errors>
		</div>
	</div>
	
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4" for="content">Enter Description</label>
			<form:input type="text" id="content" path="content" placeholder="content"/>
			<form:errors path="content" ></form:errors>
		</div>
	</div>
	
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4" for="categoryDescription">Enter Description</label>
			<form:select id="category" path="categoryId">
				<c:forEach items="${categories}" var="item">
					 <form:option value="${item.id}" >${item.categoryName}</form:option>
				</c:forEach>
			</form:select>
			<form:errors path="category" ></form:errors>
		</div>
	</div>
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4">Slider Shown ?</label>
				<label class="switch switch-text switch-info switch-pill">
					<form:checkbox path="sliderStatus" class="switch-input" value="${(post.sliderStatus)}"/>
						<span data-on="On" data-off="Off" class="switch-label"></span> 
						<span class="switch-handle"></span>
				</label>	
		</div>
	</div>
	
	
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4" for="">Enter Description</label>
			
				<c:forEach items="${multipartFiles}" var="item" varStatus="key">
					<form:input type="file" path="files[${key.index}]" />
					<form:errors path="files[${key.index}]" ></form:errors>
				</c:forEach>
			
		</div>
	</div>
	
	
	<div class="form-group">
		
		<div class="offset-md-4 col-md-8">
			<input type="submit" value="Save" class="btn btn-primary " />
			<a href="${contextRoot}/posts" class="btn btn-primary ">Back</a>
		</div>
	</div>
</form:form>