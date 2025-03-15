<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<%@ include file="./base.jsp" %>
	</head>
	<body>
		<div class="container mt-3">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					
					<h1 class="text-center mb-3">Fill the employee details</h1>
					
					<form action="handle-employee" method="post">
					
					<div class="form-group">
						<label for="name">Employee Name</label> 
						<input type="text"
							   class="form-control" id="name" aria-describedby="emailHelp"
							   name="name" placeholder="Enter the employee name here">
					</div>

					<div class="form-group">
						<label for="description">Employee Designation</label>
						<textarea class="form-control" name="designation" id="description"
								  rows="5" placeholder="Enter the employee description"></textarea>
					</div>

					<div class="form-group">
						<label for="price">Employee DOJ</label> 
						<input type="text"
							   placeholder="Enter employee DOJ" name="doj"
							   class="form-control" id="price">
					</div>
					
					<div class="form-group">
						<label for="price">Salary</label> 
						<input type="text"
							   placeholder="Enter employee salary" name="salary"
							   class="form-control" id="price">
					</div>
					
					<div class="container text-center mt-2">
						<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
					
				</form>
					
				</div>
			</div>
		</div>
	</body>
</html>