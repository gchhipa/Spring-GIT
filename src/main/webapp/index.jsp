<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="<c:url value="/resources/lib/jquery.min.js" />"></script>
<%-- <script src="<c:url value="/resources/lib/angular.min.js" />"></script> --%>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="<c:url value="/resources/lib/script.js" />"></script>
</head>
<body>

	<div ng-app="app">
		<div ng-controller="EmployeeCtrl">
			<table>

				</tr>
				<tr ng-repeat="employee in employees">
					<td>{{employee.empno}}</td>
					<td>{{employee.empname}}</td>
				</tr>
			</table>
		</div>

	</div>


</body>
</html>