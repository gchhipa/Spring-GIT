<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="<c:url value="/resources/lib/jquery.min.js" />"></script>
<script src="<c:url value="/resources/lib/underscore.js" />"></script>
<script src="<c:url value="/resources/lib/backbone.js" />"></script>
</head>
<body>

	<div id="container"></div>
	<script>
		var Employee = Backbone.Model.extend({
			defaults : {
				empno : null,
				empname : "rohit"
			},
			initialize : function() {
				console.log("Employee Initialized");
			}
		});

		var Employees = Backbone.Collection.extend({
			model : Employee,
			urlRoot : "http://localhost:8086/Backbone-Spring/employee/1",

		});

		var EmployeeView = Backbone.View.extend({
			render : function() {
				this.$el.html(this.model.get('empname'));
				return this;
			}
		});
		
		
	</script>

</body>
</html>