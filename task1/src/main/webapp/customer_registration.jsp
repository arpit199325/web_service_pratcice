<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="customerapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="controller_js/angular.js"></script>
<script type="text/javascript" src="controller_js/customer_controller.js"></script>
<title> Customer Registration Details </title>
</head>

<body>

<form action="vehicle_registration.jsp" enctype="application/json" ng-controller="customercntrl">

<h1> Customer Registration Details : </h1>

<div>

<p>Name : <input type="text" name="namej" ng-model="namen" required></p>

<p>Address : 
<textarea rows="5" cols="15" name="addressj" ng-model="addressn" required></textarea>
</p><br>


<p>
Social Security Number : 
<input type="text" name="ssnj" ng-model="ssnn" ng-maxlength="9" required> 

</p><br>


<p>
Date Of Birth : 

<input type="text" name="dobj" ng-model="dobn" required> 

</p><br>


<p>
Number Of Accident :
<input type="text" name="accidentj" ng-model="accidentn"> 
</p><br>


<p>
Marital Status : 

<select name="marritalj" ng-model="marritaln">

<option></option>
<option value="single"> Single </option>
<option value="married"> Married </option>
<option value="divorsed"> Divorced </option>

</select>

</p><br>


<p>
Gender : 
<input type="radio" name="genderj" value="male" ng-model="gendern"> Male
<input type="radio" name="genderj" value="female" ng-model="gendern"> Female

</p><br>


<p>
Contact Number : 
<input type="text" name="contactnumberj" ng-model="contactnumbern" required> 
</p><br>

<p>
<input type="submit" ng-click="submitcustomer()" value="Continue" >
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
<td>contact number</td>
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