var app=angular.module("task1app",[]);
app.controller("task1cntrl",task1function);

function task1function($scope,$http)
{
	var addurl="http://localhost:8002/task1/webapi/task1/addtask1";
	
	
	$scope.submittask1=function()
	{
		$http({
			
			method : 'POST',
			url : addurl,
			data :
				{
				name : $scope.namen,
				address: $scope.addressn,
				ssn: $scope.ssnn,
				dob: $scope.dobn,
				number_accident: $scope.accidentn,
				marital_status: $scope.marritaln,
				gender: $scope.gendern,
				contact_no: $scope.contactnumbern,
				year: $scope.yearn,
				vin: $scope.vinn,
				make: $scope.maken,
				model: $scope.modeln,
				body_style: $scope.bodystylen,
				anti_theft: $scope.theftdevicen,
				owning_type: $scope.ownedtypen,
				vehicle_usage: $scope.vehicleusen,
				mileage: $scope.mileagen,
				more_vehicle: $scope.numberofvehiclesn,
				comprehensive_colision_coverage: $scope.comprehensive_colision_coveragen,
				rental_coverage: $scope.rental_coveragen,
				unisured_underinsured_coverage: $scope.unisured_underinsured_coveragen,
				medical_PIP_coverage: $scope.medical_PIP_coveragen 
				}
		}).then(function(response)
				{
					$scoep.entereddata=response.data;
			
				},
				function(error)
				{
					alert("data is not valid");
				}
		
				)
		
		
		
	}


}