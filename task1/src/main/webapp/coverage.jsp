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

<input type="submit" ng-click="submitcoverage()" value="Submit">
<input type="button" value="cancel"> 

</form>

</body>
</html>