<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Save New Project</title>
</head>
<body>

	<div class="container">
		<h1>Projects</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Created At</th>
					<th>Project Id</th>
					<th>Project Name</th>
					<th>Project Code</th>
					<th>Manager</th>

				</tr>
			</thead>



			<c:forEach var="projects" items="${project}">



				<tr>
					<td>${projects.createdAt}</td>
					<td>${projects.id}</td>
					<td>${projects.projectName}</td>
					<td>${projects.projectCode}</td>
					<td>${projects.manager.firstName}${projects.manager.lastName}</td>



				</tr>
			</c:forEach>
		</table>

	</div>



	<hr>


	<div>

		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">

			<div class="panel panel-info">

				<div class="panel-heading">
					<div class="panel-title">Save New Project</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- Registration Form -->
					<form:form
						action="${pageContext.request.contextPath}/project/processSaveProject"
						modelAttribute="project" class="form-horizontal">


						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>

							<form:input path="projectName" placeholder="Project Name"
								class="form-control" />
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>

							<form:input path="projectCode" placeholder="Project Code"
								class="form-control" />
						</div>


						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user">Assigned Manager Id</i></span>

							<form:input path="manager" placeholder="Assigned Manager"
								class="form-control" />
						</div>




						<!-- Register Button -->
						<div style="margin-top: 10px" class="form-group">
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-info">Save</button>
							</div>
						</div>
						<a href="${pageContext.request.contextPath}/project/1"
							class="btn btn-primary" role="button" aria-pressed="true">Cancel</a>
					</form:form>

				</div>

			</div>

		</div>

	</div>


	<hr>

	<div class="container">
		<h1>Details of Projects</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Created At</th>
					<th>Description</th>
					<th>Details</th>
					<th>Project Status</th>
					<th>Project Name</th>
					<th>Responsible Employee</th>


				</tr>
			</thead>



			<c:forEach var="projectdetail" items="${project2}">



				<tr>
					<td>${projectdetail.createdAt}</td>
					<td>${projectdetail.description}</td>
					<td>${projectdetail.details}</td>
					<td>${projectdetail.projectStatus}</td>
					<td>${projectdetail.project.projectName}</td>
					<td>${projectdetail.assignee.firstName}
						${projectdetail.assignee.lastName}</td>



				</tr>
			</c:forEach>
		</table>
	</div>



</body>
</html>