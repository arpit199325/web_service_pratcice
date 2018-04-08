<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app='myapp'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript" src="angular.js"></script>
<script type="text/javascript" src="angular.min.js"></script>
<script type="text/javascript" src="controller.js"></script>

<title>Rest Angular Hibernate Test</title>
</head>

<body>

<script type="text/javascript">

var app=angular.module("myapp",[]);
app.controller("myctrl", alldatarequest);
	
	function alldatarequest($scope,$http){

	var all_data="http://localhost:8002/AngularHibernateRest/webapi/testing";
	var zipcodebasedata ="http://localhost:8002/AngularHibernateRest/webapi/testing/test/62610";
	var deletedata="http://localhost:8002/AngularHibernateRest/webapi/testing/delete/127";
	var adddata="http://localhost:8002/AngularHibernateRest/webapi/testing/validationtest";

	
	$http.get(all_data).then(function(response){
		
		$scope.result=response.data;
		
	});

	$scope.savedata=function()
	{
		$http({
			
			method : "POST",
			url : adddata,
			headers : {'Content Type' : 'application/json'}
			
		}).success(function(data)
				{
					$scope.status=data;
					$http.get(all_data).then(function(response)
							{
								$scope.result = response;
							
							})
				
				})
	}
	
}


</script>

<form action="" ng-controller="myctrl" method="get">
<div>

<p>Search Risk Level By Your Zipcode :  <input type="text" ng-model="zipcode"> </p>

<p>
<table>
<tr>
<th> Id </th>
<th> Zip code </th>
<th> City </th>
<th> State </th>
<th> Risk Level </th>
</tr>


<tr ng-repeat="x in result">
<td>{{x.id}}</td>
<td>{{x.zipcode}}</td>
<td>{{x.city}}</td>
<td>{{x.state}}</td>
<td>{{x.risk_level}}</td>
</tr>

</table>
</p>


</div>

</form>


</body>
</html>