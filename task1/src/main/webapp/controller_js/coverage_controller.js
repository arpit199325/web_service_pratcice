
var coverageapp=angular.module("coverageapp",[]);

coverageapp.controller("coveragecntrl",coveragefunction);

function coveragefunction($scope,$http)
{
	var addcoverage="http://localhost:8002/task1/webapi/task1/addcoverage";
	var customer_data_url="http://localhost:8002/task1/webapi/task1/customer_summary";
	
	$http.get(customer_data_url).then(function(response)
			{
			$scope.get_customer=response.data;
		
			})
	
	$scope.showplan=function()
	{
		var medical_PIP_limitv=Number($scope.medical_PIP_limitn || 0);
		var unisured_underinsured_limitv=Number($scope.unisured_underinsured_limitn || 0);
		var rental_limitv=Number($scope.rental_limitn || 0);
		var comprehensive_colision_limitv=Number($scope.comprehensive_colision_limitn || 0);
		var liability_limitv=Number($scope.liability_limitn || 0);

		$scope.total_limit=medical_PIP_limitv + unisured_underinsured_limitv + rental_limitv + comprehensive_colision_limitv + liability_limitv;
		
//		var rental_a_deductiblev=Number($scope.rental_a_deductible || 0);
//		var rental_b_deductiblev=Number($scope.rental_b_deductible || 0);
//		var rental_c_deductiblev=Number($scope.rental_c_deductible || 0);
//		var rental_d_deductiblev=Number($scope.rental_d_deductible || 0);
//		var rental_e_deductiblev=Number($scope.rental_e_deductible || 0);
//		
//		$scope.totald=rental_a_deductiblev+rental_b_deductiblev+rental_c_deductiblev+rental_d_deductiblev+rental_e_deductiblev;
		
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
											
												}
									}).then(function(response)
											{
										
												$scope.result=response.data;
										
											})
									
									}
	
	
}

