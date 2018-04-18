<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="task1app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="controller_js/angular.js"></script>
<script type="text/javascript" src="controller_js/task1_controller.js"></script>
<title> Insurance Application </title>
</head>
<body>

<form action="" enctype="application/json" ng-controller="task1cntrl">


<h1> Customer Registration Details : </h1>

<div >

<p>Name : <input type="text" name="namej" ng-model="namen"></p>

<p>Address : 
<textarea rows="5" cols="15" name="addressj" ng-model="addressn"></textarea>
</p><br>


<p>
Social Security Number : 
<input type="text" name="ssnj" ng-model="ssnn"> 

</p><br>


<p>
date Of Birth : 

<input type="text" name="dobj" ng-model="dobn"> 

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
<input type="text" name="contactnumberj" ng-model="contactnumbern"> 
</p><br>

</div>



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

</div>

<div>




<h2> Types Of Available Coverage Are given As Below : </h2>

<h3> Please select Coverage from the below list : </h3>

<div>

<p>
<h3> LIABILITY COVERAGE </h3>
<h4 style="color: red;"> This Coverage is automatically included in your Premium </h4>
<p>
Your Deductible Amount is = $1000,<br>
Your Premium Per Month is = $100,<br>
Your Limit is = $1,00,000<br>

The maximum payment for bodily injury per person = $2000  <br>
The maximum payable for bodily injury per accident = $20000 <br>
The maximum payable for property damage = $20000 <br>
</p>

<h3> COMPREHENSIVE AND COLLISION COVERAGE <input type="checkbox" name="comprehensive_colision_coberagej" ng-model="comprehensive_colision_coveragen"></h3>
<h3> RENTAL REIMBURSEMENT COVERAGE <input type="checkbox" name="rental_coveragej"  ng-model="rental_coveragen"></h3>
<h3> UNINSURED AND UNDERINSURED MOTORIST COVERAGE <input type="checkbox" name="unisured_underinsured_coveragej" ng-model="unisured_underinsured_coveragen"></h3>
<h3> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION <input type="checkbox" name="medical_PIP_coveragej" ng-model="medical_PIP_coveragen"></h3>

</div>


<div ng-if="comprehensive_colision_coveragen" >
<h3> Your Comprehensive and Collision coverage Details are given as below :  </h3>
<p>Your Deductible Amount is = $6000,<br>
Your Premium Per Month is = $600,<br>
Your Limit is = $6,00,000<br>
</p>
</div>

<div ng-if="rental_coveragen">
<h3> Your RENTAL REIMBURSEMENT COVERAGE coverage Details are given as below :  </h3>
<p>Your Deductible Amount is = $5000,<br>
Your Premium Per Month is = $500,<br>
Your Limit is = $5,00,000<br>
</p>
</div>

<div ng-if="unisured_underinsured_coveragen" >
<h3> Your UNINSURED AND UNDERINSURED MOTORIST COVERAGE Details are given as below :  </h3>
<p>Your Deductible Amount is = $4000,<br>
Your Premium Per Month is = $400,<br>
Your Limit is = $4,00,000<br>
</p>
</div>

<div ng-if="medical_PIP_coveragen" >
<h3> Your MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION Details are given as below :  </h3>
<p>Your Deductible Amount is = $3000,<br>
Your Premium Per Month is = $300,<br>
Your Limit is = $3,00,000<br>
</p>
</div>

</div>

<input type="submit" ng-submit="" value="Submit">
<input type="button" value="Cancel"> 

</form>

</body>
</html>