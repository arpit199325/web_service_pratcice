<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="vehicleapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="angular.js"></script>
<title> Vehicle Registration Details </title>
</head>

<body>

<script type="text/javascript">

var app=angualr.module("vehicleapp",[]);
app.controller("vehiclecntrl",vehicledetails);


function vehicledetails($scope,$http)
{
	var geturl="http://localhost:8002/task1/webapi/task1/addvehicle";
	

	
	
}



</script>


<form action="" enctype="application/json" ng-controller="vehiclecntrl" ng-submit="addvehicle()">

<h1>  Vehicle Details : </h1>


<div>


<p> Vehicle made Year :
<input type="text" name="yearj" ng-model="yearn"> 

</p></n>



<p> Vehicle VIN Number :
<input type="text" name="vinj" ng-model="vinn">

</p></n>


<p> Make : 
<input type="text" name="makej" ng-model="maken">
</p></n>


<p> Model :
<input type="text" name="modelj" ng-model="modeln"> 

</p> Body Style :
<input type="text" name="bodystylej" ng-model="bodystylen">
</n>


<p> Anti Theft Device :

<select name="theftdevicej" ng-model="theftdevicen">
<option></option>
<option value="yes"> YES </option>
<option value="no"> NO </option>
</select>
</p></n>


<p> Owning Details :

<input type="radio" value="owned" name="ownedtypej" ng-model="ownedtypen"> OWNED
<input type="radio" value="financed" name="ownedtypej" ng-model="ownedtypen"> FINANCED
<input type="radio" value="leased" name="ownedtypej" ng-model="ownedtypen"> LEASED

</p></n>


<p>Vehicle Use :
<select name="vehicleusej" ng-model="vehicleusen">
<option></option>
<option value="day"> Day </option>
<option value="week"> Week </option>
<option value="year"> Year </option>
</select>

Enter The Average Mileage Details :<input type="text" name="milagej" ng-model="milagen">

</p></n>


<p>
Do You Have More Vehicles :
<select name="numberofvehiclesj" ng-model="numberofvehiclesn">
<option></option>
<option value="yes"> YES </option>
<option value="no"> NO </option>
</select>

</p></n>


<p>
<input type="submit" value="Submit" >
<input type="button" value="Cancel">

</p></n>


</div>

</form>

</body>


</html>