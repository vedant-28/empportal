<html>
	<head>
		<%@ include file="./base.jsp" %>
		<%@ taglib prefix="c" uri="jakarta.tags.core" %>
	</head>
	<body>
		<div class="container mt-3">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center mb-3">Welcome To Employee Portal</h1>
					<table class="table table-striped">
  						<thead>
    						<tr>
      							<th scope="col">EMPID</th>
      							<th scope="col">Name</th>
      							<th scope="col">Designation</th>
      							<th scope="col">DOJ</th>
      							<th scope="col">Salary</th>
      							<th scope="col">Action</th>
    						</tr>
  						</thead>
  						<tbody>
    						<c:forEach items="${employees }" var="e">
    							<tr>
    								<th scope="row">EMP${e.empId }</th>
    									<td>${e.name }</td>
    									<td>${e.designation }</td>
    									<td>${e.doj }</td>
    									<td class="font-weight-bold">&#8377; ${e.salary }</td>
    									<td class="py-2">
      									<a href="delete-employee/${e.empId }">
      										<i class="fa-solid fa-trash text-danger"></i>
      									</a>
      									<a href="update-employee/${e.empId }">
      										<i class="fa-solid fa-pen-nib text-primary"></i>
      									</a>
      								</td>
    							</tr>
    						</c:forEach>
  						</tbody>
					</table>
					
					<div class="container text-center">
						<a href="add-employee" class="btn btn-outline-success">Add Employee</a>
					</div>
					
				</div>
			</div>
		</div>
	</body>
</html>
