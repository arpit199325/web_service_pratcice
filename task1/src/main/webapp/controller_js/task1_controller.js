var app=angular.module("task1app",[]);
app.controller("task1cntrl",task1function);

function task1function($scope,$http)
{
	var addurl="";
	
	
	$scope.submittask1=function()
	{
		$http({
			
			method : 'POST',
			url : addurl,
			data :
				{
				
				
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