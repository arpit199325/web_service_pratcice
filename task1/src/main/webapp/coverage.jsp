<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app='coverageapp'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Coverage Details </title>
<script type="text/javascript" src="controller_js/angular.js"></script>
<script type="text/javascript" src="controller_js/coverage_controller.js"></script>
</head>

<body>

<form action="details.jsp" ng-controller="coveragecntrl" enctype="application/json">

<h2> Types Of Available Coverage Are given As Below : </h2>

<h3> Please select Coverage from the below list : </h3>

<div>

<h3> LIABILITY COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="liability_coveragen">
<option value="90000">$90000</option>
<option value="95000">$95000</option>
</select>
</p>

<h3> COMPREHENSIVE AND COLLISION COVERAGE</h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="comprehensive_colision_coveragen">
<option value="100000">$100000</option>
<option value="150000">$150000</option>
</select>
</p>


<h3> RENTAL REIMBURSEMENT COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="rental_coveragen">
<option value="100000">$100000</option>
<option value="150000">$150000</option>
</select>
</p>

<h3> UNINSURED AND UNDERINSURED MOTORIST COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="unisured_underinsured_coveragen">
<option value="200000">$200000</option>
<option value="300000">$300000</option>
</select>
</p>


<h3> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION </h3>
<p>Select the limit :
<select ng-model="medical_PIP_coveragen">
<option value="300000">$300000</option>
<option value="400000">$400000</option>
</select>
</p>

</div>


<input type="submit" ng-click="submitcoverage()" value="Submit">
<input type="button" value="cancel"> 

</form>

</body>
</html>