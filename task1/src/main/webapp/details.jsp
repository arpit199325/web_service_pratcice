<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="detailsapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="controller_js/angular.js"></script>
<script type="text/javascript" src="controller_js/details_controller.js"></script>
<title> Summary Page </title>
</head>
<body>

<form action="" enctype="application/json" ng-controller="detailscntrl">

<h3> Customer Details : </h3><br>
<table title="Customer Details" width="3px" cellpadding="2px" cellspacing="2px" border="2px">

<tr>

<td>customer_id</td>
<td>address</td>
<td>age_discount</td>
<td>contact_no</td>
<td>dob</td>
<td>gender</td>
<td>increase_accident</td>
<td>marital_status</td>
<td>name</td>
<td>number_accident</td>
<td>ssn</td>

</tr>

<tr ng-repeat="customer in customer_result">

<td>{{customer.customer_id}}</td>
<td>{{customer.address}}</td>
<td>{{customer.age_discount}}</td>
<td>{{customer.contact_no}}</td>
<td>{{customer.dob}}</td>
<td>{{customer.gender}}</td>
<td>{{customer.increase_accident}}</td>
<td>{{customer.marital_status}}</td>
<td>{{customer.name}}</td>
<td>{{customer.number_accident}}</td>
<td>{{customer.ssn}}</td>

</tr>

</table><br>

<h3> Vehicle Details : </h3><br>

<table title="Vehicle Details" width="3px" cellpadding="2px" cellspacing="2px" border="2px">
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

<tr ng-repeat="vehicle in vehicle_result">
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

</table><br>

<h3> Coverage Details : </h3><br>
<table title="Coverage Details" width="4px" cellpadding="2px" cellspacing="4px" border="2px">

<tr>

<td>coverage_id</td>
<td>comprehensive_colision_coverage</td>
<td>customer_id</td>
<td>liability_coverage</td>
<td>medical_PIP_coverage</td>
<td>rental_coverage</td>
<td>unisured_underinsured_coverage</td>
<td>total_deductible</td>
<td>total_limit</td>
<td>total_premium</td>
<td>total_discount</td>
<td>total_increase</td>
<td>accepted_premium</td>
</tr>

<tr ng-repeat="coverage in coverage_result">
<td>{{coverage.coverage_id}}</td>
<td>{{coverage.comprehensive_colision_coverage}}</td>
<td>{{coverage.customer_id}}</td>
<td>{{coverage.liability_coverage}}</td>
<td>{{coverage.medical_PIP_coverage}}</td>
<td>{{coverage.rental_coverage}}</td>
<td>{{coverage.unisured_underinsured_coverage}}</td>
<td>{{coverage.total_deductible}}</td>
<td>{{coverage.total_limit}}</td>
<td>{{coverage.total_premium}}</td>
<td>{{coverage.total_discount}}</td>
<td>{{coverage.total_increase}}</td>
<td>{{coverage.accepted_premium}}</td>
</tr>

</table>

</form>

</body>
</html>