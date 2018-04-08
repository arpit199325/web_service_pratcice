<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app='myapp'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript" src="angular.js"></script>

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
								$scope.result = response.data;
							
							})
				
				})
	}
	
}


</script>

<form action="" ng-controller="myctrl">


<fieldset>

<table cellpadding="2" cellspacing="2">

	<legend> Add Information </legend>
	
	<tr>
	<td> City : </td>
	<td><input type="text" name="city" ng-model="city"></td>
	</tr>
	
	<tr>
	<td> Risk Level : </td>
	<td><input type="text" name="risklevel" ng-model="risklevel"></td>
	</tr>
	
	<tr>
	<td> State : </td>
	<td>
	<select name="state" ng-model="state">
	<option value="IL"> IL </option>
	<option value="FL"> FL </option>
	<option value="CA"> CA </option>
	<option value="AR"> AR </option>
	<option value="Hawaii"> Hawaii </option>
	</select>
	</td>
	</tr>
	
	<tr>
	<td> Zip code : </td>
	<td><input type="text" name="zipcode" ng-model="zipcode"></td>
	</tr>
	
	<tr>
	<td><input type="submit" ng-click="savedata()" value="ADD DATA"></td>
	</tr>

</table>

</fieldset>


<div>

<p> Filter Your Data :  <input type="text" ng-model="zipcode_search"> </p></n>


<p>

<table>
<tr>
<th> Id </th>
<th> Zip code </th>
<th> City </th>
<th> State </th>
<th> Risk Level </th>
</tr>


<tr ng-repeat="x in result | filter : zipcode_search | orderby : zipcode | orderby : city | orderby : state | orderby : risk_level">
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