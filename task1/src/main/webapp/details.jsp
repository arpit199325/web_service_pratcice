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


<ul ng-repeat="customer in customer_result">
<li> Customer Name : {{customer.name}}</li>
<li> Customer Address : {{customer.address}}</li>
<li> Customer Social Security :{{customer.ssn}}</li>
<li> Customer Date Of the Birth :{{customer.dob}}</li>
<li> Number of Accident Customer has :{{customer.number_accident}}</li>
<li> Marital status :{{customer.marital_status}}</li>
<li> Gender :{{customer.gender}}</li>
<li> Contact Details :{{customer.contact_no}}</li>
</ul>

<table ng-repeat="vehicle in vehicle_result">


<tr>
<td></td>
</tr>

</table>

<table ng-repeat="coverage in coverage_result">


<tr>
<td></td>
</tr>


</table>


</form>

</body>
</html>