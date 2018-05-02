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

<form action="coverage.jsp" ng-submit="submitvehicle()" enctype="application/json" ng-controller="vehiclecntrl">

<h1>  Vehicle Details : </h1>

<div>

<p> Vehicle made Year :
<input type="text" name="yearj" pattern="(?=.*\d).{4}" title="Please enter the four number for Year " ng-model="yearn" ng-trim="false" required> 
</p><br>

<p> Vehicle VIN Number :
<input type="text" name="vinj" ng-model="vinn" maxlength="16" title="Please enter the 16 number long VIN Number" ng-trim="false" required>
</p><br>

<p> Make :
<select name="makej" ng-model="maken" required>
  <option value="">None</option>
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
  <option value="">None</option>
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
<input type="radio" value="yes" name="theftdevicej" ng-model="theftdevicen" >Yes
<input type="radio" value="no" name="theftdevicej" ng-model="theftdevicen" >No
</p><br>


<p> Owning Details :
<input type="radio" value="owned" name="ownedtypej" ng-model="ownedtypen"> OWNED
<input type="radio" value="financed" name="ownedtypej" ng-model="ownedtypen"> FINANCED
<input type="radio" value="leased" name="ownedtypej" ng-model="ownedtypen"> LEASED
</p><br>


<p>Vehicle Usage Type :
<select name="vehicleusej" ng-model="vehicleusen" required>
  <option value="">None</option>
<option value="school"> school </option>
<option value="work"> work </option>
</select><br>
</p><br>


<p>
<input type="button" value="Add Another Vehicle" ng-hide="new_vehicle">
<input type="submit" value="Continue" >
<input type="button" value="Cancel">
</p><br>



<div ng-model="show_vehicle">

<h1>  Vehicle Details : </h1>

<p> Vehicle made Year :
<input type="text" name="yearj" pattern="(?=.*\d).{4}" title="Please enter the four number for Year " ng-model="yearn" ng-trim="false" required> 
</p><br>

<p> Vehicle VIN Number :
<input type="text" name="vinj" ng-model="vinn" maxlength="16" title="Please enter the 16 number long VIN Number" ng-trim="false" required>
</p><br>

<p> Make :
<select name="makej" ng-model="maken" required>
  <option value="">None</option>
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
  <option value="">None</option>
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
<input type="radio" value="yes" name="theftdevicej" ng-model="theftdevicen" >Yes
<input type="radio" value="no" name="theftdevicej" ng-model="theftdevicen" >No
</p><br>


<p> Owning Details :
<input type="radio" value="owned" name="ownedtypej" ng-model="ownedtypen"> OWNED
<input type="radio" value="financed" name="ownedtypej" ng-model="ownedtypen"> FINANCED
<input type="radio" value="leased" name="ownedtypej" ng-model="ownedtypen"> LEASED
</p><br>


<p>Vehicle Usage Type :
<select name="vehicleusej" ng-model="vehicleusen" required>
  <option value="">None</option>
<option value="school"> school </option>
<option value="work"> work </option>
</select><br>
</p><br>


<p>
<input type="button" value="Add Another Vehicle" ng-show="">
<input type="submit" value="Continue" >
<input type="button" value="Cancel">
</p><br>

</div>









</div>





<table>

<tr>
<td>vehicle_id</td>
<td>anti_theft</td>
<td>anti_theft_discount</td>
<td>body_style</td>
<td>customer_id</td>
<td>make</td>
<td>model</td>
<td>owning_type</td>
<td>vehicle_usage</td>
<td>vin</td>
<td>year</td>
<td>year_discount</td>
</tr>

<tr ng-repeat="vehicle in result">
<td>{{vehicle.vehicle_id}}</td>
<td>{{vehicle.anti_theft}}</td>
<td>{{vehicle.anti_theft_discount}}</td>
<td>{{vehicle.body_style}}</td>
<td>{{vehicle.customer_id}}</td>
<td>{{vehicle.make}}</td>
<td>{{vehicle.model}}</td>
<td>{{vehicle.owning_type}}</td>
<td>{{vehicle.vehicle_usage}}</td>
<td>{{vehicle.vin}}</td>
<td>{{vehicle.year}}</td>
<td>{{vehicle.year_discount}}</td>
</tr>

</table>


</form>

</body>


</html>