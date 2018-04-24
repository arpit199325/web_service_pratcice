
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
					mileage : $scope.mileagen
					}
			}).then(function(response){
				
				$scope.result=response.data;
				
				$http.get(getvehicle).then(function(response){
						
						$scope.result=response.data;
					
						});
			
				})

		
	}
	
	
}

