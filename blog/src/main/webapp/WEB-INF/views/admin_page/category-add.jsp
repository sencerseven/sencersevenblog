<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<a href="${contextRoot}/admin/category" class="btn "></a>
<form:form class="form-horizontal" modelAttribute="category" method="POST" action="${contextRoot}/category/add" >
	<form:hidden path="id"/>
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4" for="categoryName">Enter Category Name</label>
			<form:input type="text" id="categoryName" path="categoryName" placeholder="Category Name"/>
			<form:errors path="categoryName" ></form:errors>
		</div>
	</div>
	
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4" for="categoryDescription">Enter Description</label>
			<form:input type="text" id="categoryDescription" path="categoryDescription" placeholder="Category Description"/>
			<form:errors path="categoryDescription" ></form:errors>
		</div>
	</div>
	
	
	<div class="form-group">
		
		<div class="col-md-8">
		<label class="control-label col-md-4">Status(Active)</label>
				<label class="switch switch-text switch-info switch-pill">
					<form:checkbox path="active" class="switch-input" checked="checked" />
						<span data-on="On" data-off="Off" class="switch-label"></span> 
						<span class="switch-handle"></span>
				</label>	
		</div>
	</div>
	
	<div class="form-group">
		
		<div class="offset-md-4 col-md-8">
			<input type="submit" value="Save" class="btn btn-primary " />
			<a href="${contextRoot}/category" class="btn btn-primary ">Back</a>
		</div>
	</div>
</form:form>