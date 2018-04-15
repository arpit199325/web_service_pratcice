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
	var addurl="http://localhost:8002/TASK_1/task1/addcustomer";
	
	
	var submitbtn=function()
	{
		
		http({
		
		method : 'POST',
		url : addurl ,
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
		})
		
	}
	
}

</script>


<form action="" ng-submit="submitbtn()" method="post" enctype="application/json" ng-controller="customercntrl">

<h1> Customer Registration Details : </h1>

<div >

<p>Name : <input type="text" name="namej" ng-model="namen"></p>

<p>Address : 
<textarea rows="5" cols="15" ng-model="addressn"></textarea>
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
<option> Single </option>
<option> Married </option>
<option> Divorced </option>

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
<input type="submit" value="Submit" >
<input type="button" value="Cancel">

</p>

</div>



</form>


</body>


</html>