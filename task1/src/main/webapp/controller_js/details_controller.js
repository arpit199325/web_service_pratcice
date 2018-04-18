
var app=angular.module("detailsapp",[]);
app.controller("detailscntrl",summarydetails);

function summarydetails($scope,$http)
{
	
	var customerurl="http://localhost:8002/task1/webapi/task1/customer_summary";
	var vehicleurl="http://localhost:8002/task1/webapi/task1/vehicle_summary";
	var coverageurl="http://localhost:8002/task1/webapi/task1/coverage_summary";
	
	$http.get(customerurl).then(function(response)
			{
		$scope.customer_result=response.data;
			});
	
	$http.get(vehicleurl).then(function(response)
			{
		$scope.vehicle_result=response.data;
		
			});
	$http.get(coverageurl).then(function(response)
			{
		$scope.coverage_result=response.data;

			});
	
}

