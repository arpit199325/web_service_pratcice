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
<input type="text" name="yearj" ng-model="yearn" ng-trim="false" required> 
</p><br>

<p> Vehicle VIN Number :
<input type="text" name="vinj" ng-model="vinn" ng-trim="false" required>
</p><br>

<p> Make :
<select name="makej" ng-model="maken" required>
<option></option>
<option value="Honda">Honda</option>
<option value="Acura">Acura</option>
<option value="BMW">BMW</option>
<option value="Audi">Audi</option>
<option value="Ferrari">Ferrari</option>
<option value="Ford">Ford</option>
<option value="Fiat">Fiat</option>
<option value="GMC">GMC</option>
<option value="Hyundai">Hyundai</option>
<option value="Infinity">Infinity</option>
<option value="Jaguar">Jaguar</option>
<option value="Jeep">Jeep</option>
<option value="Kia">Kia</option>
<option value="Lexus">Lexus</option>
</select> 
</p><br>

<p> Model :
<input type="text" name="modelj" ng-model="modeln" ng-trim="false" required>
</p><br>


<p>Body Style :
<select name="bodystylej" ng-model="bodystylen">
<option></option>
<option value="SUV">SUV</option>
<option value="Truck">Truck</option>
<option value="Sedan">Sedan</option>
<option value="Van">Van</option>
<option value="Coupe">Coupe</option>
<option value="Wagon">Wagon</option>
<option value="Convertible">Convertible</option>
<option value="Sports Car">Sports Car</option>
<option value="Diesel">Diesel</option>
<option value="Cross Over">Cross Over</option>
<option value="Luxury Car">Luxury Car</option>
<option value="Hybrid/Electric">Hybrid/Electric</option>
<option value="Certified PreOwned">Certified PreOwned</option>
</select>
</p><br>

<p> Anti Theft Device :
<input type="radio" value="yes" name="theftdevicej" ng-model="theftdevicen">Yes
<input type="radio" value="no" name="theftdevicej" ng-model="theftdevicen">No
</p><br>


<p> Owning Details :
<input type="radio" value="owned" name="ownedtypej" ng-model="ownedtypen"> OWNED
<input type="radio" value="financed" name="ownedtypej" ng-model="ownedtypen"> FINANCED
<input type="radio" value="leased" name="ownedtypej" ng-model="ownedtypen"> LEASED
</p><br>


<p>Vehicle Usage Type :
<select name="vehicleusej" ng-model="vehicleusen">
<option></option>
<option value="school"> school </option>
<option value="work"> work </option>
</select><br>
</p><br>


<p>
<input type="submit" ng-click="submitvehicle()" value="Continue" >
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
<td>Customer ID</td>

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
<td>{{x.customerid}}</td>

</tr>

</table>


</form>

</body>


</html>