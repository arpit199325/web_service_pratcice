<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
var app = angular.module('myApp', []);
app.controller('mycontroller', function($scope,$http){
	
	
	
	
	
});
	

</script>


<title>Welcome to the Rest Test</title>
</head>
<body>


<div ng-app="restapp" ng-controller="mycontroller">

<p>City : <input type="text" ng-model="city"></p></n>


<p>Risk Level : <input type="text" ng-model="risk_level"></p></n>


<p>State : <input type="text" ng-model="state"></p></n>


<p>Zipode :<input type="text" ng-model="zipcode"></p></n>
 


</div>

</body>
</html>