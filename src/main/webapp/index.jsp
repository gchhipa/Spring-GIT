<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="<c:url value="/resources/lib/jquery.min.js" />"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="<c:url value="/resources/lib/script.js" />"></script>
</head>
<body class="container">

	<div ng-app="app">
		<div class="jumbotron">
			<h4>Employee Details</h4>
			<p>Resize this responsive page to see the effect!</p>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<div ng-controller="EmployeeCtrl">
					<table class="table">
						<thead>
							<tr>
								<th>Employee Number</th>
								<th>Employee Name</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="employee in employees">
								<td>{{employee.empno}}</td>
								<td>{{employee.empname}}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4"></div>
		</div>
	</div>
</body>
</html>