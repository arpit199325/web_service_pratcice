<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="customerapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>

<script type="text/javascript" src="controller_js/angular.js"></script>
<script type="text/javascript" src="controller_js/customer_controller.js"></script>
<title> Customer Registration Details </title>
</head>

<body>

<form action="vehicle_registration.jsp" enctype="application/json" ng-controller="customercntrl" name="customerform">

<h1> Customer Registration Details : </h1>

<div>

<p>Name : <input type="text" name="namej" pattern="(?=.*[a-z])(?=.*[A-Z]).{1,}" title="Please enter the name that must contain at least one Upper Case and One Lower case letter and must be at least 1 character long" ng-model="namen" ng-trim="false" required>
</p><br>

<p>Address : 
<textarea rows="5" cols="15" name="addressj" ng-model="addressn" required></textarea>
</p><br>

<p>
Social Security Number : 
<input type="text" name="ssnj" pattern="(?=.*\d).{9,}" title="Please enter your 9 digit Social Security Number" ng-model="ssnn" ng-trim="false" required> 
</p><br>

<p>
Date Of Birth : 
<input type="text" id="datepicker" name="dobj" ng-model="dobn" ng-trim="false" required>
</p><br>

<p>
Number Of Accident :
<input type="text" name="accidentj"  pattern="(?=.*\d).{1,}" title="Please enter number only" ng-model="accidentn" ng-trim="false"> 
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
<input type="text" name="contactnumberj" pattern="(?=.*\d).{10,}" title="Please enter your 10 digit Mobile Number" ng-model="contactnumbern" ng-trim="false" required> 
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