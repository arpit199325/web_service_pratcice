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

<h3> AUTO LIABILITY COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the Limit :
<select ng-model="liability_limitn" required>
<option value="">None</option>
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select><br>
your selected limit : {{liability_limitn}}<br>
</p>

<ul type="disc" ng-show="liability_limitn==100000">
<li> Your Deductible Will be : </li>
<li> Your Total 6 Months Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="liability_limitn==90000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="liability_limitn==80000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="liability_limitn==70000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="liability_limitn==60000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<h3> COMPREHENSIVE AND COLLISION COVERAGE</h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="comprehensive_colision_limitn" >
<option value="">None</option>
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select><br>
your selected limit : {{comprehensive_colision_limitn}}<br>
</p>

<ul type="disc" ng-show="comprehensive_colision_limitn==100000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="comprehensive_colision_limitn==90000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="comprehensive_colision_limitn==80000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show=" comprehensive_colision_limitn==70000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="comprehensive_colision_limitn==60000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<h3> RENTAL REIMBURSEMENT COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="rental_limitn" >
  <option value="">None</option>
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select><br>
your selected limit : {{rental_limitn}}<br>
</p>

<ul type="disc" ng-show="rental_limitn==100000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="rental_limitns==90000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="rental_limitn==80000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="rental_limitn ==70000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="rental_limitn ==60000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<h3> UNINSURED AND UNDERINSURED MOTORIST COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="unisured_underinsured_limitn" >
  <option value="">None</option>
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select><br>
your selected limit : {{unisured_underinsured_limitn}}<br>
</p>

<ul type="disc" ng-show="unisured_underinsured_limitn==100000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="unisured_underinsured_limitn==90000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>


<ul type="disc" ng-show="unisured_underinsured_limitn==80000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="unisured_underinsured_limitn==70000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="unisured_underinsured_limitn==60000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<h3> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="medical_PIP_limitn" >
  <option value="">None</option>
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select><br>
your selected limit : {{medical_PIP_limitn}}<br>
</p>

<ul type="disc" ng-show="medical_PIP_limitn==100000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="medical_PIP_limitn==90000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="medical_PIP_limitn==80000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="medical_PIP_limitn==70000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

<ul type="disc" ng-show="medical_PIP_limitn==60000">
<li> Your Deductible Will be : </li>
<li> Your Monthly Premium Will Be : </li>
<li> The maximum payment for bodily injury per person : </li>
<li> The maximum payable for bodily injury per accident : </li>
<li> The maximum payable for property damage : </li>
</ul>

</div>

<input type="button" ng-model="showdetails" ng-click="showplan()" value="Show My Plan Details">

<p >
Your Total Limit :{{total_limit}}<br>
</p>

<ul ng-repeate="x in get_customer">
<li>You have Got Age discount on your Limit : {{x.discount}}</li>
<li> Your Increase Premium Amount based on number of accident will be :{{x.increase_amount}} </li>

</ul>

<input type="submit" ng-click="submitcoverage()" value="Submit">
<input type="button" value="cancel"> 

</form>

</body>
</html>