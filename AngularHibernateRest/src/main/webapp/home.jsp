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
	var zipcodebasedata ="http://localhost:8002/AngularHibernateRest/webapi/testing/test";
	var deletedata="http://localhost:8002/AngularHibernateRest/webapi/testing/delete";
	var adddata="http://localhost:8002/AngularHibernateRest/webapi/testing/validationtest";
	var newaddmethod="http://localhost:8002/AngularHibernateRest/webapi/testing/add";
	var riskbyurl="http://localhost:8002/AngularHibernateRest/webapi/testing/riskdatasearch";
	
	$scope.evalues=[">","<",">=","<=","==","!="];
	$scope.statedata=["IL","AR","FL","Hawai","CA","NJ","NY"];
	
	$scope.sortingorder=function(x)
	{
		$scope.sortbydata=x;
		
	}
	
	$http.get(all_data).then(function(response){
		
		$scope.result=response.data;
		
	});
	
	
	$scope.add=function()
	{
		$http
		({
			method : 'POST',
			url : adddata,
			data : {
					city : $scope.cityn,
					risk_level :$scope.riskleveln,
					state : $scope.staten,
					zipcode : $scope.zipcoden			
				    }
		}).then(function(reponse){
				
			$scope.result=response.data;
			
			$http.get(all_data).then(function(response){
				
				$scope.result=response.data;
				
							});
			
				})
			
	
		$scope.cityn ='';
		$scope.riskleveln = '';
		$scope.staten ='';
		$scope.zipcoden = '';

		
	}
	
	
	$scope.riskbyfilter=function()
	{
		$http({
			
			method : 'GET',
			url : riskbyurl+$scope.risklevelfilter+ $scope.risklevelfilterdata,
			data : 
				{ 
				euqlaity :$scope.risklevelfilter,
				risk_level : $scope.risklevelfilterdata
				}
			
			 }).then(function(response)
						{
					$scope.result = response.data;
				
						})
				
				$scope.equalityj = '';
				$scope.risklevelfilterdataj = '';
	
	 }
	
	
	
}


</script>

<form ng-submit="add()" ng-controller="myctrl" enctype="application/json">


<fieldset>

<table cellpadding="2" cellspacing="2">

	<legend> Add Information </legend>
	
	<tr>
	<td> City : </td>
	<td><input type="text" name="cityj" ng-model="cityn"></td>
	</tr>
	
	<tr>
	<td> Risk Level : </td>
	<td><input type="text" name="risklevelj" ng-model="riskleveln"></td>
	</tr>
	
	<tr>
	<td> State : </td>
	<td>
	<select name="statej" ng-model="staten" ng-options="states for states in statedata">
	</select>
	</td>
	</tr>
	
	<tr>
	<td> Zip code : </td>
	<td><input type="text" name="zipcodej" ng-model="zipcoden" ng-maxlength="6"></td>
	<h1>{{zipcode.$valid}}</h1>
	</tr>
	
	<tr>
	<td><input type="submit" value="Submit"></td>
	</tr>

</table>

</fieldset>


<div>

<p> Filter Your Data :  <input type="text" ng-model="data_filter"> </p></n>

<p> Risk Level : 

<select name="equalityj" ng-model="risklevelfilter" ng-options="equality for equality in evalues"></select>

<input type="text" name="risklevelfilterdataj" ng-model="risklevelfilterdata" >

<input type="button" ng-click="riskbyfilter()" value="Search">

</p></n>


<p>

<table cellpadding="6" cellspacing="2" border="3" width="100%">
<tr>
<th ng-click="sortingorder('id')"> Id </th>
<th ng-click="sortingorder('zipcode')"> Zip code </th>
<th ng-click="sortingorder('city')"> City </th>
<th ng-click="sortingorder('state')"> State </th>
<th ng-click="sortingorder('risk_level')"> Risk Level </th>
</tr>


<tr ng-repeat="x in result | filter : data_filter | orderBy : sortbydata">
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