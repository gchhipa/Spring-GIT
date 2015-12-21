//code here

(function() {

	var app = angular.module("app", []);
	var EmployeeCtrl = function($scope, $http) {
		$http.get("http://localhost:8086/Backbone-Spring/employees").then(
				function(response) {
					$scope.employees = response.data;
				}, function(error) {
					$scope.error = "Something Went wrong";
				});
	};

	app.controller("EmployeeCtrl", [ "$scope", "$http", EmployeeCtrl ]);

})();