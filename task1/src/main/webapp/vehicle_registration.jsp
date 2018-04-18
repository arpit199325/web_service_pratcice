<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="vehicleapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="controller_js/angular.js"></script>
<script type="text/javascript" src="controller_js/vehicle_controller.js"></script>
<title> Vehicle Registration Details </title>
</head>

<body>

<form action="coverage.jsp" enctype="application/json" ng-controller="vehiclecntrl">

<h1>  Vehicle Details : </h1>

<div>

<p> Vehicle made Year :
<input type="text" name="yearj" ng-model="yearn"> 
</p><br>

<p> Vehicle VIN Number :
<input type="text" name="vinj" ng-model="vinn">
</p><br>


<p> Make : 
<input type="text" name="makej" ng-model="maken">
</p><br>

<p> Model :
<input type="text" name="modelj" ng-model="modeln"> 
</p><br>

<p>Body Style :
<input type="text" name="bodystylej" ng-model="bodystylen">
</p><br>

<p> Anti Theft Device :
<select name="theftdevicej" ng-model="theftdevicen">
<option></option>
<option value="yes"> YES </option>
<option value="no"> NO </option>
</select>
</p><br>


<p> Owning Details :
<input type="radio" value="owned" name="ownedtypej" ng-model="ownedtypen"> OWNED
<input type="radio" value="financed" name="ownedtypej" ng-model="ownedtypen"> FINANCED
<input type="radio" value="leased" name="ownedtypej" ng-model="ownedtypen"> LEASED
</p><br>


<p>Vehicle Use :

<select name="vehicleusej" ng-model="vehicleusen">
<option></option>
<option value="day"> Day </option>
<option value="week"> Week </option>
<option value="year"> Year </option>
</select><br>

Enter The Average Mileage Details :<input type="text" name="milagej" ng-model="mileagen">

</p><br>


<p>
Do You Have More Vehicles :
<select name="numberofvehiclesj" ng-model="numberofvehiclesn">
<option></option>
<option value="yes"> YES </option>
<option value="no"> NO </option>
</select>
</p><br>


<p>
<input type="submit" ng-click="submitvehicle()" value="Submit" >
<input type="button" value="Cancel">
</p><br>

</div>

<table>


<tr>

<td>Vehicle ID</td>
<td>Year</td>
<td>VIN</td>
<td>Make</td>
<td>Model</td>
<td>Body Style</td>
<td>Anti Theft Device</td>
<td>Owning Type</td>
<td>Vehicle Usage</td>
<td>Mileage</td>
<td>Number Of Vehicles</td>

</tr>


<tr ng-repeat="x in result">

<td>{{x.vehicle_id}}</td>
<td>{{x.year}}</td>
<td>{{x.vin}}</td>
<td>{{x.make}}</td>
<td>{{x.model}}</td>
<td>{{x.body_style}}</td>
<td>{{x.anti_theft}}</td>
<td>{{x.owning_type}}</td>
<td>{{x.vehicle_usage}}</td>
<td>{{x.mileage}}</td>
<td>{{x.more_vehicle}}</td>


</tr>



</table>


</form>

</body>


</html>