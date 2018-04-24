
var app=angular.module("detailsapp",[]);
app.controller("detailscntrl",summarydetails);

function summarydetails($scope,$http)
{
	
	var customer_data_url="http://localhost:8002/task1/webapi/task1/customer_summary";
	var vehicle_data_url="http://localhost:8002/task1/webapi/task1/vehicle_summary";
	var coverage_data_url="http://localhost:8002/task1/webapi/task1/coverage_summary";
	
	$http.get(customer_data_url).then(function(response)
			{
		$scope.customer_result=response.data;
			});
	
	$http.get(vehicle_data_url).then(function(response)
			{
		$scope.vehicle_result=response.data;
		
			});
	$http.get(coverage_data_url).then(function(response)
			{
		$scope.coverage_result=response.data;

			});
	
	
//	
//	var details="http://localhost:8002/task1/webapi/task1/summary";
//	
//	$http.get(details).then(function(response)
//			{
//		$scope.customer_summary=response.data;
//			});
//	
	
}

