<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="customerapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="angular.js"></script>
<title> Customer Registration Details </title>
</head>

<body>

<script type="text/javascript">


var app=angular.module("customerapp",[]);
app.controller("customercntrl", customerdetails);

function customerdetails($scope,$http) 
{
	var addcustomer="http://localhost:8002/task1/webapi/task1/addcustomer";
	var getcustomer="http://localhost:8002/task1/webapi/task1";
	
	$http.get(getcustomer).then(function(response)
			{
				$scope.result=response.data;
		
			});
	
	 $scope.submitbtn=function()
	{
		
		$http({
		
		method : 'POST',
		url : addcustomer ,
		data :
			{
			name : $scope.namen,
			address : $scope.addressn,
			ssn : $scope.ssnn,
	 		dob : $scope.dobn,
			number_accident :  $scope.accidentn,
			marital_status :  $scope.marritaln,
			gender :  $scope.gendern,
			contact_no :  $scope.contactnumbern
			}
		}).then(function(response){
			$scope.result=response.data;
			
			$http.get(getcustomer).then(function(response)
					{
						$scope.result=response.data;
				
					});
				})
		
	}
	
}

</script>


<form action="" enctype="application/json" ng-controller="customercntrl">

<h1> Customer Registration Details : </h1>

<div >

<p>Name : <input type="text" name="namej" ng-model="namen"></p>

<p>Address : 
<textarea rows="5" cols="15" name="addressj" ng-model="addressn"></textarea>
</p></n>


<p>
Social Security Number : 
<input type="text" name="ssnj" ng-model="ssnn"> 

</p></n>


<p>
date Of Birth : 

<input type="text" name="dobj" ng-model="dobn"> 

</p>


<p>
Number Of Accident :
<input type="text" name="accidentj" ng-model="accidentn"> 

</p>


<p>
Marital Status : 

<select name="marritalj" ng-model="marritaln">

<option></option>
<option value="single"> Single </option>
<option value="married"> Married </option>
<option value="divorsed"> Divorced </option>

</select>

</p></n>


<p>
Gender : 
<input type="radio" name="genderj" value="male" ng-model="gendern"> Male
<input type="radio" name="genderj" value="female" ng-model="gendern"> Female

</p>


<p>
Contact Number : 
<input type="text" name="contactnumberj" ng-model="contactnumbern"> 
</p>

<p>
<input type="submit" ng-click="submitbtn()" value="Submit" >
<input type="button" value="Cancel">
</p>


</div>




<table  >

<tr>
<td>id</td>
<td>name</td>
<td>address</td>
<td>ssn</td>
<td>dob</td>
<td>accident</td>
<td>married status</td>
<td>gender</td>
<td>conatct number</td>
</tr>



<tr ng-repeat="x in result">

<td>{{x.customer_id}}</td>
<td>{{x.name}}</td>
<td>{{x.address}}</td>
<td>{{x.ssn}}</td>
<td>{{x.dob}}</td>
<td>{{x.number_accident}}</td>
<td>{{x.marital_status}}</td>
<td>{{x.gender}}</td>
<td>{{x.contact_no}}</td>

</tr>


</table>


</form>


</body>


</html>