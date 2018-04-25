

var app=angular.module("customerapp",[]);
app.controller("customercntrl", customerdetails);

function customerdetails($scope,$http) 
{
	var addcustomer="http://localhost:8002/task1/webapi/task1/addcustomer";
	var getcustomer="http://localhost:8002/task1/webapi/task1/customer_details";

	$scope.age_discountn=15;
	$scope.accident_increasen=125;
	
	$http.get(getcustomer).then(function(response)
			{
				$scope.result=response.data;
		
			});
	
	 $scope.submitcustomer=function()
	{
		
		$http({
		
		method : 'POST',
		url : addcustomer,
		data :
			{
			name : $scope.namen,
			address : $scope.addressn,
			ssn : $scope.ssnn,
	 		dob : $scope.dobn,
			number_accident :  $scope.accidentn,
			marital_status :  $scope.marritaln,
			gender :  $scope.gendern,
			contact_no :  $scope.contactnumbern,
			discount : $scope.age_discountn,
			increase_amount : $scope.accident_increasen
			}
		}).then(function(response){
			$scope.result=response.data;
			
			$http.get(getcustomer).then(function(response)
					{
						$scope.result=response.data;
				
					});
				})
		
	}
	
}
