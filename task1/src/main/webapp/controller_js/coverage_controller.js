
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
		
		var liability_a_deductiblev=Number($scope.liability_a_deductiblen || 0);
		var liability_b_deductiblev=Number($scope.liability_b_deductiblen || 0);
		var liability_c_deductiblev=Number($scope.liability_c_deductiblen || 0);
		var liability_d_deductiblev=Number($scope.liability_d_deductiblen || 0);
		var liability_e_deductiblev=Number($scope.liability_e_deductiblen || 0);
		var liability_f_deductiblev=Number($scope.liability_f_deductiblen || 0);
		
		$scope.selected_liability_deductible_v=liability_a_deductiblev+liability_b_deductiblev+liability_c_deductiblev+liability_d_deductiblev+
								 liability_e_deductiblev+liability_f_deductiblev;
		
		var comprehensive_colision_a_deductiblev=Number($scope.comprehensive_colision_a_deductiblen || 0);
		var comprehensive_colision_b_deductiblev=Number($scope.comprehensive_colision_b_deductiblen || 0);
		var comprehensive_colision_c_deductiblev=Number($scope.comprehensive_colision_c_deductiblen || 0);
		var comprehensive_colision_d_deductiblev=Number($scope.comprehensive_colision_d_deductiblen || 0);
		var comprehensive_colision_e_deductiblev=Number($scope.comprehensive_colision_e_deductiblen || 0);
		var comprehensive_colision_f_deductiblev=Number($scope.comprehensive_colision_f_deductiblen || 0);
		
		$scope.selected_comprehensive_colision_deductiblev=comprehensive_colision_a_deductiblev+comprehensive_colision_b_deductiblev+
		comprehensive_colision_c_deductiblev+comprehensive_colision_d_deductiblev+comprehensive_colision_e_deductiblev+
		comprehensive_colision_f_deductiblev;
		
		var rental_a_deductiblev=Number($scope.rental_a_deductiblen || 0);
		var rental_b_deductiblev=Number($scope.rental_b_deductiblen || 0);
		var rental_c_deductiblev=Number($scope.rental_c_deductiblen || 0);
		var rental_d_deductiblev=Number($scope.rental_d_deductiblen || 0);
		var rental_e_deductiblev=Number($scope.rental_e_deductiblen || 0);
		var rental_f_deductiblev=Number($scope.rental_f_deductiblen || 0);
		
		$scope.selected_rental_deductiblev=rental_a_deductiblev+rental_b_deductiblev+rental_c_deductiblev+rental_d_deductiblev+
		rental_e_deductiblev+rental_f_deductiblev;
		
		var unisured_underinsured_a_deductiblev=Number($scope.unisured_underinsured_a_deductiblen || 0);
		var unisured_underinsured_b_deductiblev=Number($scope.unisured_underinsured_b_deductiblen || 0);
		var unisured_underinsured_c_deductiblev=Number($scope.unisured_underinsured_c_deductiblen || 0);
		var unisured_underinsured_d_deductiblev=Number($scope.unisured_underinsured_d_deductiblen || 0);
		var unisured_underinsured_e_deductiblev=Number($scope.unisured_underinsured_e_deductiblen || 0);
		var unisured_underinsured_f_deductiblev=Number($scope.unisured_underinsured_f_deductiblen || 0);
		
		$scope.selected_unisured_underinsured_deductiblev=unisured_underinsured_a_deductiblev+unisured_underinsured_b_deductiblev+
		unisured_underinsured_c_deductiblev+unisured_underinsured_d_deductiblev+unisured_underinsured_e_deductiblev+
		unisured_underinsured_f_deductiblev;
		
		var medical_PIP_a_deductiblev=Number($scope.medical_PIP_a_deductiblen || 0);
		var medical_PIP_b_deductiblev=Number($scope.medical_PIP_b_deductiblen || 0);
		var medical_PIP_c_deductiblev=Number($scope.medical_PIP_c_deductiblen || 0);
		var medical_PIP_d_deductiblev=Number($scope.medical_PIP_d_deductiblen || 0);
		var medical_PIP_e_deductiblev=Number($scope.medical_PIP_e_deductiblen || 0);
		var medical_PIP_f_deductiblev=Number($scope.medical_PIP_f_deductiblen || 0);
		
		$scope.selected_medical_PIP_deductiblev=medical_PIP_a_deductiblev+medical_PIP_b_deductiblev+medical_PIP_c_deductiblev+
		medical_PIP_d_deductiblev+medical_PIP_e_deductiblev+medical_PIP_f_deductiblev;
		
		$scope.total_deductible_n=liability_a_deductiblev+liability_b_deductiblev+liability_c_deductiblev+liability_d_deductiblev+
								  liability_e_deductiblev+liability_f_deductiblev+comprehensive_colision_a_deductiblev+
								  comprehensive_colision_b_deductiblev+comprehensive_colision_c_deductiblev+comprehensive_colision_d_deductiblev+
								  comprehensive_colision_e_deductiblev+comprehensive_colision_f_deductiblev+rental_a_deductiblev+rental_a_deductiblev
								  +rental_b_deductiblev+rental_c_deductiblev+rental_d_deductiblev+rental_e_deductiblev+rental_f_deductiblev+
								  unisured_underinsured_a_deductiblev+unisured_underinsured_b_deductiblev+unisured_underinsured_c_deductiblev+
								  unisured_underinsured_d_deductiblev+unisured_underinsured_e_deductiblev+unisured_underinsured_f_deductiblev+
								  medical_PIP_a_deductiblev+medical_PIP_b_deductiblev+medical_PIP_c_deductiblev+medical_PIP_d_deductiblev+
								  medical_PIP_e_deductiblev+medical_PIP_f_deductiblev;
		
		var liability_a_premium_v=Number($scope.liability_a_premium_n || 0);
		var liability_b_premium_v=Number($scope.liability_b_premium_n || 0);
		var liability_c_premium_v=Number($scope.liability_c_premium_n || 0);
		var liability_d_premium_v=Number($scope.liability_d_premium_n || 0);
		var liability_e_premium_v=Number($scope.liability_e_premium_n || 0);
		var liability_f_premium_v=Number($scope.liability_f_premium_n || 0);
		
		$scope.selected_liability_premium_v=liability_a_premium_v+liability_b_premium_v+liability_c_premium_v+liability_d_premium_v+
		liability_e_premium_v+liability_f_premium_v;
		
		var comprehensive_colision_a_premium_v=Number($scope.comprehensive_colision_a_premium_n || 0);
		var comprehensive_colision_b_premium_v=Number($scope.comprehensive_colision_b_premium_n || 0);
		var comprehensive_colision_c_premium_v=Number($scope.comprehensive_colision_c_premium_n || 0);
		var comprehensive_colision_d_premium_v=Number($scope.comprehensive_colision_d_premium_n || 0);
		var comprehensive_colision_e_premium_v=Number($scope.comprehensive_colision_e_premium_n || 0);
		var comprehensive_colision_f_premium_v=Number($scope.comprehensive_colision_f_premium_n || 0);
		
		$scope.selected_comprehensive_colision_premium_v=comprehensive_colision_a_premium_v+comprehensive_colision_b_premium_v+
		comprehensive_colision_c_premium_v+comprehensive_colision_d_premium_v+comprehensive_colision_e_premium_v+comprehensive_colision_f_premium_v;
		
		var rental_a_premium_v=Number($scope.rental_a_premium_n || 0);
		var rental_b_premium_v=Number($scope.rental_b_premium_n || 0);
		var rental_c_premium_v=Number($scope.rental_c_premium_n || 0);
		var rental_d_premium_v=Number($scope.rental_d_premium_n || 0);
		var rental_e_premium_v=Number($scope.rental_e_premium_n || 0);
		var rental_f_premium_v=Number($scope.rental_f_premium_n || 0);
		
		$scope.selected_rental_premium_v=rental_a_premium_v+rental_b_premium_v+rental_c_premium_v+rental_d_premium_v+rental_e_premium_v+
		rental_f_premium_v;
		
		var unisured_underinsured_a_premium_v=Number($scope.unisured_underinsured_a_premium_n || 0);
		var unisured_underinsured_b_premium_v=Number($scope.unisured_underinsured_b_premium_n || 0);
		var unisured_underinsured_c_premium_v=Number($scope.unisured_underinsured_c_premium_n || 0);
		var unisured_underinsured_d_premium_v=Number($scope.unisured_underinsured_d_premium_n || 0);
		var unisured_underinsured_e_premium_v=Number($scope.unisured_underinsured_e_premium_n || 0);
		var unisured_underinsured_f_premium_v=Number($scope.unisured_underinsured_f_premium_n || 0);
		
		$scope.selected_unisured_underinsured_premium_v=unisured_underinsured_a_premium_v+unisured_underinsured_b_premium_v+
		unisured_underinsured_c_premium_v+unisured_underinsured_d_premium_v+unisured_underinsured_e_premium_v+unisured_underinsured_f_premium_v;
		
		var medical_PIP_a_premium_v=Number($scope.medical_PIP_a_premium_n || 0);
		var medical_PIP_b_premium_v=Number($scope.medical_PIP_b_premium_n || 0);
		var medical_PIP_c_premium_v=Number($scope.medical_PIP_c_premium_n || 0);
		var medical_PIP_d_premium_v=Number($scope.medical_PIP_d_premium_n || 0);
		var medical_PIP_e_premium_v=Number($scope.medical_PIP_e_premium_n || 0);
		var medical_PIP_f_premium_v=Number($scope.medical_PIP_f_premium_n || 0);
		
		$scope.selcted_medical_PIP_premium_v=medical_PIP_a_premium_v+medical_PIP_b_premium_v+medical_PIP_c_premium_v+medical_PIP_d_premium_v
		+medical_PIP_e_premium_v+medical_PIP_f_premium_v;
		
		 $scope.total_premium_n=liability_a_premium_v+liability_b_premium_v+liability_c_premium_v+liability_d_premium_v+liability_e_premium_v+
		  						liability_f_premium_v+comprehensive_colision_a_premium_v+comprehensive_colision_b_premium_v+
		  						comprehensive_colision_c_premium_v+comprehensive_colision_d_premium_v+comprehensive_colision_e_premium_v+
		  						comprehensive_colision_f_premium_v+rental_a_premium_v+rental_b_premium_v+rental_c_premium_v+rental_d_premium_v+
		  						rental_e_premium_v+rental_f_premium_v+unisured_underinsured_a_premium_v+unisured_underinsured_b_premium_v+
		  						unisured_underinsured_c_premium_v+unisured_underinsured_d_premium_v+unisured_underinsured_e_premium_v+
		  						unisured_underinsured_f_premium_v+medical_PIP_a_premium_v+medical_PIP_b_premium_v+medical_PIP_c_premium_v+
		  						medical_PIP_d_premium_v+medical_PIP_e_premium_v+medical_PIP_f_premium_v;
		
		
	}
	
	$scope.submitcoverage=function(){
		
		var medical_PIP_limitv=Number($scope.medical_PIP_limitn || 0);
		var unisured_underinsured_limitv=Number($scope.unisured_underinsured_limitn || 0);
		var rental_limitv=Number($scope.rental_limitn || 0);
		var comprehensive_colision_limitv=Number($scope.comprehensive_colision_limitn || 0);
		var liability_limitv=Number($scope.liability_limitn || 0);
		
		$scope.total_limit_n=medical_PIP_limitv + unisured_underinsured_limitv + rental_limitv + comprehensive_colision_limitv + liability_limitv;
		
		var liability_a_deductiblev=Number($scope.liability_a_deductiblen || 0);
		var liability_b_deductiblev=Number($scope.liability_b_deductiblen || 0);
		var liability_c_deductiblev=Number($scope.liability_c_deductiblen || 0);
		var liability_d_deductiblev=Number($scope.liability_d_deductiblen || 0);
		var liability_e_deductiblev=Number($scope.liability_e_deductiblen || 0);
		var liability_f_deductiblev=Number($scope.liability_f_deductiblen || 0);
		
		
		var comprehensive_colision_a_deductiblev=Number($scope.comprehensive_colision_a_deductiblen || 0);
		var comprehensive_colision_b_deductiblev=Number($scope.comprehensive_colision_b_deductiblen || 0);
		var comprehensive_colision_c_deductiblev=Number($scope.comprehensive_colision_c_deductiblen || 0);
		var comprehensive_colision_d_deductiblev=Number($scope.comprehensive_colision_d_deductiblen || 0);
		var comprehensive_colision_e_deductiblev=Number($scope.comprehensive_colision_e_deductiblen || 0);
		var comprehensive_colision_f_deductiblev=Number($scope.comprehensive_colision_f_deductiblen || 0);
		
		var rental_a_deductiblev=Number($scope.rental_a_deductiblen || 0);
		var rental_b_deductiblev=Number($scope.rental_b_deductiblen || 0);
		var rental_c_deductiblev=Number($scope.rental_c_deductiblen || 0);
		var rental_d_deductiblev=Number($scope.rental_d_deductiblen || 0);
		var rental_e_deductiblev=Number($scope.rental_e_deductiblen || 0);
		var rental_f_deductiblev=Number($scope.rental_f_deductiblen || 0);
		
		var unisured_underinsured_a_deductiblev=Number($scope.unisured_underinsured_a_deductiblen || 0);
		var unisured_underinsured_b_deductiblev=Number($scope.unisured_underinsured_b_deductiblen || 0);
		var unisured_underinsured_c_deductiblev=Number($scope.unisured_underinsured_c_deductiblen || 0);
		var unisured_underinsured_d_deductiblev=Number($scope.unisured_underinsured_d_deductiblen || 0);
		var unisured_underinsured_e_deductiblev=Number($scope.unisured_underinsured_e_deductiblen || 0);
		var unisured_underinsured_f_deductiblev=Number($scope.unisured_underinsured_f_deductiblen || 0);
		
		var medical_PIP_a_deductiblev=Number($scope.medical_PIP_a_deductiblen || 0);
		var medical_PIP_b_deductiblev=Number($scope.medical_PIP_b_deductiblen || 0);
		var medical_PIP_c_deductiblev=Number($scope.medical_PIP_c_deductiblen || 0);
		var medical_PIP_d_deductiblev=Number($scope.medical_PIP_d_deductiblen || 0);
		var medical_PIP_e_deductiblev=Number($scope.medical_PIP_e_deductiblen || 0);
		var medical_PIP_f_deductiblev=Number($scope.medical_PIP_f_deductiblen || 0);
		
		$scope.total_deductible_n=liability_a_deductiblev+liability_b_deductiblev+liability_c_deductiblev+liability_d_deductiblev+
								  liability_e_deductiblev+liability_f_deductiblev+comprehensive_colision_a_deductiblev+
								  comprehensive_colision_b_deductiblev+comprehensive_colision_c_deductiblev+comprehensive_colision_d_deductiblev+
								  comprehensive_colision_e_deductiblev+comprehensive_colision_f_deductiblev+rental_a_deductiblev+rental_a_deductiblev
								  +rental_b_deductiblev+rental_c_deductiblev+rental_d_deductiblev+rental_e_deductiblev+rental_f_deductiblev+
								  unisured_underinsured_a_deductiblev+unisured_underinsured_b_deductiblev+unisured_underinsured_c_deductiblev+
								  unisured_underinsured_d_deductiblev+unisured_underinsured_e_deductiblev+unisured_underinsured_f_deductiblev+
								  medical_PIP_a_deductiblev+medical_PIP_b_deductiblev+medical_PIP_c_deductiblev+medical_PIP_d_deductiblev+
								  medical_PIP_e_deductiblev+medical_PIP_f_deductiblev;
		
		var liability_a_premium_v=Number($scope.liability_a_premium_n || 0);
		var liability_b_premium_v=Number($scope.liability_b_premium_n || 0);
		var liability_c_premium_v=Number($scope.liability_c_premium_n || 0);
		var liability_d_premium_v=Number($scope.liability_d_premium_n || 0);
		var liability_e_premium_v=Number($scope.liability_e_premium_n || 0);
		var liability_f_premium_v=Number($scope.liability_f_premium_n || 0);
		
		var comprehensive_colision_a_premium_v=Number($scope.comprehensive_colision_a_premium_n || 0);
		var comprehensive_colision_b_premium_v=Number($scope.comprehensive_colision_b_premium_n || 0);
		var comprehensive_colision_c_premium_v=Number($scope.comprehensive_colision_c_premium_n || 0);
		var comprehensive_colision_d_premium_v=Number($scope.comprehensive_colision_d_premium_n || 0);
		var comprehensive_colision_e_premium_v=Number($scope.comprehensive_colision_e_premium_n || 0);
		var comprehensive_colision_f_premium_v=Number($scope.comprehensive_colision_f_premium_n || 0);
		
		var rental_a_premium_v=Number($scope.rental_a_premium_n || 0);
		var rental_b_premium_v=Number($scope.rental_b_premium_n || 0);
		var rental_c_premium_v=Number($scope.rental_c_premium_n || 0);
		var rental_d_premium_v=Number($scope.rental_d_premium_n || 0);
		var rental_e_premium_v=Number($scope.rental_e_premium_n || 0);
		var rental_f_premium_v=Number($scope.rental_f_premium_n || 0);
		
		var unisured_underinsured_a_premium_v=Number($scope.unisured_underinsured_a_premium_n || 0);
		var unisured_underinsured_b_premium_v=Number($scope.unisured_underinsured_b_premium_n || 0);
		var unisured_underinsured_c_premium_v=Number($scope.unisured_underinsured_c_premium_n || 0);
		var unisured_underinsured_d_premium_v=Number($scope.unisured_underinsured_d_premium_n || 0);
		var unisured_underinsured_e_premium_v=Number($scope.unisured_underinsured_e_premium_n || 0);
		var unisured_underinsured_f_premium_v=Number($scope.unisured_underinsured_f_premium_n || 0);
		
		var medical_PIP_a_premium_v=Number($scope.medical_PIP_a_premium_n || 0);
		var medical_PIP_b_premium_v=Number($scope.medical_PIP_b_premium_n || 0);
		var medical_PIP_c_premium_v=Number($scope.medical_PIP_c_premium_n || 0);
		var medical_PIP_d_premium_v=Number($scope.medical_PIP_d_premium_n || 0);
		var medical_PIP_e_premium_v=Number($scope.medical_PIP_e_premium_n || 0);
		var medical_PIP_f_premium_v=Number($scope.medical_PIP_f_premium_n || 0);
		
		 $scope.total_premium_n=liability_a_premium_v+liability_b_premium_v+liability_c_premium_v+liability_d_premium_v+liability_e_premium_v+
		  						liability_f_premium_v+comprehensive_colision_a_premium_v+comprehensive_colision_b_premium_v+
		  						comprehensive_colision_c_premium_v+comprehensive_colision_d_premium_v+comprehensive_colision_e_premium_v+
		  						comprehensive_colision_f_premium_v+rental_a_premium_v+rental_b_premium_v+rental_c_premium_v+rental_d_premium_v+
		  						rental_e_premium_v+rental_f_premium_v+unisured_underinsured_a_premium_v+unisured_underinsured_b_premium_v+
		  						unisured_underinsured_c_premium_v+unisured_underinsured_d_premium_v+unisured_underinsured_e_premium_v+
		  						unisured_underinsured_f_premium_v+medical_PIP_a_premium_v+medical_PIP_b_premium_v+medical_PIP_c_premium_v+
		  						medical_PIP_d_premium_v+medical_PIP_e_premium_v+medical_PIP_f_premium_v;
		
	
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
											medical_PIP_f_premium : $scope.medical_PIP_f_premium_n,
											
											total_limit : $scope.total_limit_n,
											total_deductible : $scope.total_deductible_n,
											total_premium : $scope.total_premium_n
											
										
											
												}
									}).then(function(response)
											{
										
												$scope.result=response.data;
										
											})
									
									}
	
	
}

