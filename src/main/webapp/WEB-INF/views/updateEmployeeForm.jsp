<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<%@include file="./base.jsp" %>
	</head>
	<body>
		<div class="container mt-3">
		
		<div class="row">
			
			<div class="col-md-6 offset-md-3">
				
				<h1 class="text-center mb-3">Change product details</h1>
				
				<form action="${pageContext.request.contextPath }/handle-employee" method="post">
					
					<div class="form-group">
						<label hidden="true" for="empId">Employee ID</label>
						<input type="hidden"
							   class="form-control" id="empId"
							   name="empId" placeholder="Employee ID here"
							   value="${employee.empId }">
						
						<label for="name">Employee Name</label> 
						<input type="text"
							   class="form-control" id="name" aria-describedby="emailHelp"
							   name="name" placeholder="Enter employee name here"
							   value="${employee.name }">
					</div>

					<div class="form-group">
						<label for="designation">Employee Designation</label>
						<textarea class="form-control" name="designation" id="designation"
								  rows="5" placeholder="Enter the employee designation">${employee.designation }</textarea>
					</div>
					
					<div class="form-group">
						<label for="doj">Employee DOJ</label> 
						<input type="text"
							   placeholder="Enter employee doj" name="doj"
							   class="form-control" id="doj"
							   value="${employee.doj }">
					</div>

					<div class="form-group">
						<label for="salary">Employee Salary</label> 
						<input type="text"
							   placeholder="Enter employee salary" name="salary"
							   class="form-control" id="salary"
							   value="${employee.salary }">
					</div>
					
					<div class="container text-center mt-2">
						<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	</body>
</html>