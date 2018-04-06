<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<script>

var restapp=angular.module("restapp",['$scope' , '$http' , function(){

var alldataurl="http://localgost:8002/hibernate_angualr_rest/webapi/testing";

$scope.zipcode={};

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Welcome to the Rest Test</title>
</head>
<body>


<div ng-app="restapp" ng-controller="mycontroller_1">

<p>City : <input type="text" ng-model="zipcode.city" name="city"></p></n>


<p>Risk Level : <input type="text" ng-model="zipcode.risk_level"  name="risk_level"></p></n>


<p>State : <input type="text" ng-model="zipcode.state"></p></n>


<p>Zipcode :<input type="text" ng-model="zipcode.zipcode"></p></n>
 
<p><input type="submit" ng-click="zipcodecheck()" value="Submit"></p></n>




<table>


</table>




</div>




</body>
</html>