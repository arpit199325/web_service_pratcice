
var coverageapp=angular.module("coverageapp",[]);

coverageapp.controller("coveragecntrl",coveragefunction);

function coveragefunction($scope,$http)
{
	var addcoverage="http://localhost:8002/task1/webapi/task1/addcoverage";
	
	$scope.submitcoverage=function(){
	
								$http({
		
										method:'POST',
										url:addcoverage,
										data : 
												{
											liability_coverage:$scope.liability_coveragen,
											comprehensive_colision_coverage:$scope.comprehensive_colision_coveragen,
											rental_coverage:$scope.rental_coveragen,
											unisured_underinsured_coverage:$scope.unisured_underinsured_coveragen,
											medical_PIP_coverage:$scope.medical_PIP_coveragen
												}
									}).then(function(response)
											{
										
												$scope.result=response.data;
										
											},
											function(error)
											{
												alert("Datra is not Valid");
												
											}
											
									
											)
									
									}
	
	
}

