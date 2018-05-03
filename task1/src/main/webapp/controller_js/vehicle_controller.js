
var app=angular.module("vehicleapp",[]);
app.controller("vehiclecntrl",vehicledetails);


function vehicledetails($scope,$http)
{
	var addvehicle="http://localhost:8002/task1/webapi/task1/addvehicle";
	var getvehicle="http://localhost:8002/task1/webapi/task1/vehicledetails";

	$http.get(getvehicle).then(function(response)
			{
				$scope.result=response.data;
		
			});
	
	$scope.submitvehicle=function()
	{
		$http({
			
			method : 'POST',
			url : addvehicle,
			data :
					{
					year : $scope.yearn,
					vin : $scope.vinn,
					make : $scope.maken,
					model : $scope.modeln,
					body_style : $scope.bodystylen,
					anti_theft : $scope.theftdevicen,
					owning_type : $scope.ownedtypen,
					vehicle_usage : $scope.vehicleusen,
					mileage : $scope.mileagen,
					
					vehicle_2_year : $scope.vehicle_2_yearn,
					vehicle_2_vin : $scope.vehicle_2_vinn,
					vehicle_2_make : $scope.vehicle_2_maken,
					vehicle_2_model : $scope.vehicle_2_modeln,
					vehicle_2_body_style : $scope.vehicle_2_bodystylen,
					vehicle_2_anti_theft : $scope.vehicle_2_theftdevicen,
					vehicle_2_owning_type : $scope.vehicle_2_ownedtypen,
					vehicle_2_vehicle_usage : $scope.vehicle_2_vehicleusen,
					vehicle_2_mileage : $scope.vehicle_2_mileagen,
					
					vehicle_3_year : $scope.vehicle_3_yearn,
					vehicle_3_vin : $scope.vehicle_3_vinn,
					vehicle_3_make : $scope.vehicle_3_maken,
					vehicle_3_model : $scope.vehicle_3_modeln,
					vehicle_3_body_style : $scope.vehicle_3_bodystylen,
					vehicle_3_anti_theft : $scope.vehicle_3_theftdevicen,
					vehicle_3_owning_type : $scope.vehicle_3_ownedtypen,
					vehicle_3_vehicle_usage : $scope.vehicle_3_vehicleusen,
					vehicle_3_mileage : $scope.vehicle_3_mileagen
					
					}
			}).then(function(response){
				
				$scope.result=response.data;
				
				$http.get(getvehicle).then(function(response){
						
						$scope.result=response.data;
					
						});
			
				})

		
	}
	
	
}

