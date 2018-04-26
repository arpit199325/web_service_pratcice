
var coverageapp=angular.module("coverageapp",[]);

coverageapp.controller("coveragecntrl",coveragefunction);

function coveragefunction($scope,$http)
{
	var addcoverage="http://localhost:8002/task1/webapi/task1/addcoverage";
	
	
	$scope.showplan=function()
	{
		
		var medical_PIP_limitv=Number($scope.medical_PIP_limitn || 0);
		var unisured_underinsured_limitv=Number($scope.unisured_underinsured_limitn || 0);
		var rental_limitv=Number($scope.rental_limitn || 0);
		var comprehensive_colision_limitv=Number($scope.comprehensive_colision_limitn || 0);
		var liability_limitv=Number($scope.liability_limitn || 0);
		
		$scope.total_limit_n=medical_PIP_limitv + unisured_underinsured_limitv + rental_limitv + comprehensive_colision_limitv + liability_limitv;
		
		
	}
	
	$scope.submitcoverage=function(){
	
								$http({
		
										method:'POST',
										url:addcoverage,
										data : 
												{
											liability_coverage:$scope.liability_limitn,
											comprehensive_colision_coverage:$scope.comprehensive_colision_limitn,
											rental_coverage:$scope.rental_limitn,
											unisured_underinsured_coverage:$scope.unisured_underinsured_limitn,
											medical_PIP_coverage:$scope.medical_PIP_limitn,
											
											liability_a_deductible : $scope.liability_a_deductiblen,
											liability_b_deductible : $scope.liability_b_deductiblen,
											liability_c_deductible : $scope.liability_c_deductiblen,
											liability_d_deductible : $scope.liability_d_deductiblen,
											liability_e_deductible : $scope.liability_e_deductiblen,
											liability_f_deductible : $scope.liability_f_deductiblen,
											
											comprehensive_colision_a_deductible :$scope.comprehensive_colision_a_deductiblen,
											comprehensive_colision_b_deductible :$scope.comprehensive_colision_b_deductiblen,
											comprehensive_colision_c_deductible :$scope.comprehensive_colision_c_deductiblen,
											comprehensive_colision_d_deductible :$scope.comprehensive_colision_d_deductiblen,
											comprehensive_colision_e_deductible :$scope.comprehensive_colision_e_deductiblen,
											comprehensive_colision_f_deductible :$scope.comprehensive_colision_f_deductiblen,
											
											rental_a_deductible :$scope.rental_a_deductiblen,
											rental_b_deductible :$scope.rental_b_deductiblen,
											rental_c_deductible :$scope.rental_c_deductiblen,
											rental_d_deductible :$scope.rental_d_deductiblen,
											rental_e_deductible :$scope.rental_e_deductiblen,
											rental_f_deductible :$scope.rental_f_deductiblen,
											
											unisured_underinsuredb_a_deductible : $scope.unisured_underinsuredb_a_deductiblen,
											unisured_underinsuredb_b_deductible : $scope.unisured_underinsuredb_b_deductiblen,
											unisured_underinsuredb_c_deductible : $scope.unisured_underinsuredb_c_deductiblen,
											unisured_underinsuredb_d_deductible : $scope.unisured_underinsuredb_d_deductiblen,
											unisured_underinsuredb_e_deductible : $scope.unisured_underinsuredb_e_deductiblen,
											unisured_underinsuredb_f_deductible : $scope.unisured_underinsuredb_f_deductiblen,
											
											medical_PIP_a_deductible : $scope.medical_PIP_a_deductiblen,
											medical_PIP_b_deductible : $scope.medical_PIP_b_deductiblen,
											medical_PIP_c_deductible : $scope.medical_PIP_c_deductiblen,
											medical_PIP_d_deductible : $scope.medical_PIP_d_deductiblen,
											medical_PIP_e_deductible : $scope.medical_PIP_e_deductiblen,
											medical_PIP_f_deductible : $scope.medical_PIP_f_deductiblen,
											
											liability_a_premium : $scope.liability_a_premium_n,
											liability_b_premium : $scope.liability_b_premium_n,
											liability_c_premium : $scope.liability_c_premium_n,
											liability_d_premium : $scope.liability_d_premium_n,
											liability_e_premium : $scope.liability_e_premium_n,
											liability_f_premium : $scope.liability_f_premium_n,
											
											comprehensive_colision_a_premium : $scope.comprehensive_colision_a_premium_n,
											comprehensive_colision_b_premium : $scope.comprehensive_colision_b_premium_n,
											comprehensive_colision_c_premium : $scope.comprehensive_colision_c_premium_n,
											comprehensive_colision_d_premium : $scope.comprehensive_colision_d_premium_n,
											comprehensive_colision_e_premium : $scope.comprehensive_colision_e_premium_n,
											comprehensive_colision_f_premium : $scope.comprehensive_colision_f_premium_n,
											
											rental_a_premium : $scope.rental_a_premium_n,
											rental_b_premium : $scope.rental_b_premium_n,
											rental_c_premium : $scope.rental_c_premium_n,
											rental_d_premium : $scope.rental_d_premium_n,
											rental_e_premium : $scope.rental_e_premium_n,
											rental_f_premium : $scope.rental_f_premium_n,
											
											unisured_underinsured_a_premium : $scope.unisured_underinsured_a_premium_n,
											unisured_underinsured_b_premium : $scope.unisured_underinsured_b_premium_n,
											unisured_underinsured_c_premium : $scope.unisured_underinsured_c_premium_n,
											unisured_underinsured_d_premium : $scope.unisured_underinsured_d_premium_n,
											unisured_underinsured_e_premium : $scope.unisured_underinsured_e_premium_n,
											unisured_underinsured_f_premium : $scope.unisured_underinsured_f_premium_n,
											
											medical_PIP_a_premium : $scope.medical_PIP_a_premium_n,
											medical_PIP_b_premium : $scope.medical_PIP_b_premium_n,
											medical_PIP_c_premium : $scope.medical_PIP_c_premium_n,
											medical_PIP_d_premium : $scope.medical_PIP_d_premium_n,
											medical_PIP_e_premium : $scope.medical_PIP_e_premium_n,
											medical_PIP_f_premium : $scope.medical_PIP_f_premium_n
											
												}
									}).then(function(response)
											{
										
												$scope.result=response.data;
										
											})
									
									}
	
	
}

