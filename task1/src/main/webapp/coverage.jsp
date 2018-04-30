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

<form action="details.jsp" ng-submit="submitcoverage()" ng-controller="coveragecntrl" enctype="application/json">

<h2> Types Of Available Coverage Are given As Below : </h2>

<h3> Please select Coverage from the below list : </h3>

<div>

<h3> AUTO LIABILITY COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the Limit :
<input type="radio" ng-model="liability_limitn" value="90000" required> $90,000
<input type="radio" ng-model="liability_limitn" value="100000" > $1,00,000
<input type="radio" ng-model="liability_limitn" value="200000" > $2,00,000
<input type="radio" ng-model="liability_limitn" value="300000" > $3,00,000
<input type="radio" ng-model="liability_limitn" value="400000" > $4,00,000
<input type="radio" ng-model="liability_limitn" value="500000" > $5,00,000
</p>
your selected limit : {{liability_limitn}}<br>

<p ng-show="liability_limitn == 90000">Select the Deductible Amount :
<select ng-model="liability_a_deductiblen" required>
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<h5 ng-if="liability_a_deductiblen == 125"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="liability_a_deductiblen == 125">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_a_premium_n" required>
<option value="">None</option>
<option value="740" >$740</option>
</select>
</ul>
<h5 ng-if="liability_a_deductiblen == 175"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="liability_a_deductiblen == 175">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_a_premium_n">
<option value="">None</option>
<option value="640" >$640</option>
</select>
</ul>
<h5 ng-if="liability_a_deductiblen == 225"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="liability_a_deductiblen == 225">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_a_premium_n">
<option value="">None</option>
<option value="540" >$540</option>
</select>
</ul>
<h5 ng-if="liability_a_deductiblen == 325"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="liability_a_deductiblen == 325">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_a_premium_n">
<option value="">None</option>
<option value="490" >$490</option>
</select>
</ul>
<h5 ng-if="liability_a_deductiblen == 425"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="liability_a_deductiblen == 425">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_a_premium_n">
<option value="">None</option>
<option value="440" >$440</option>
</select>
</ul>

<p ng-show="liability_limitn == 100000">Select the Deductible Amount :
<select  ng-model="liability_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<h5 ng-if="liability_b_deductiblen == 150"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="liability_b_deductiblen == 150">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_b_premium_n">
<option value="">None</option>
<option value="500" >$500</option>
</select>
</ul>
<h5 ng-if="liability_b_deductiblen == 200"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="liability_b_deductiblen == 200">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_b_premium_n">
<option value="">None</option>
<option value="400" >$400</option>
</select>
</ul>
<h5 ng-if="liability_b_deductiblen == 250"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="liability_b_deductiblen == 250">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_b_premium_n">
<option value="">None</option>
<option value="300" >$300</option>
</select>
</ul>
<h5 ng-if="liability_b_deductiblen == 350"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="liability_b_deductiblen == 350">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_b_premium_n">
<option value="">None</option>
<option value="250" >$250</option>
</select>
</ul>
<h5 ng-if="liability_b_deductiblen == 450"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="liability_b_deductiblen == 450">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_b_premium_n">
<option value="">None</option>
<option value="200" >$200</option>
</select>
</ul>

<p ng-show="liability_limitn == 200000">Select the Deductible Amount :
<select  ng-model="liability_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>
<h5 ng-if="liability_c_deductiblen == 400"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="liability_c_deductiblen == 400">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_c_premium_n">
<option value="">None</option>
<option value="1400" >$1400</option>
</select>
</ul>
<h5 ng-if="liability_c_deductiblen == 450"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="liability_c_deductiblen == 450">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_c_premium_n">
<option value="">None</option>
<option value="1300" >$1300</option>
</select>
</ul>
<h5 ng-if="liability_c_deductiblen == 500"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="liability_c_deductiblen == 500">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_c_premium_n">
<option value="">None</option>
<option value="1200" >$1200</option>
</select>
</ul>
<h5 ng-if="liability_c_deductiblen == 600"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="liability_c_deductiblen == 600">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_c_premium_n">
<option value="">None</option>
<option value="1150" >$1150</option>
</select>
</ul>
<h5 ng-if="liability_c_deductiblen == 700"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="liability_c_deductiblen == 700">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_c_premium_n">
<option value="">None</option>
<option value="1100" >$1100</option>
</select>
</ul>

<p ng-show="liability_limitn==300000">Select the Deductible Amount :
<select  ng-model="liability_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>
<h5 ng-if="liability_d_deductiblen == 650"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="liability_d_deductiblen == 650">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_d_premium_n">
<option value="">None</option>
<option value="2000" >$2000</option>
</select>
</ul>
<h5 ng-if="liability_d_deductiblen == 700"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="liability_d_deductiblen == 700">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_d_premium_n">
<option value="">None</option>
<option value="1900" >$1900</option>
</select>
</ul>
<h5 ng-if="liability_d_deductiblen == 750"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="liability_d_deductiblen == 750">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_d_premium_n">
<option value="">None</option>
<option value="1800" >$1800</option>
</select>
</ul>
<h5 ng-if="liability_d_deductiblen == 850"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="liability_d_deductiblen == 850">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_d_premium_n">
<option value="">None</option>
<option value="1750" >$1750</option>
</select>
</ul>
<h5 ng-if="liability_d_deductiblen == 950"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="liability_d_deductiblen == 950">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_d_premium_n">
<option value="">None</option>
<option value="1700" >$1700</option>
</select>
</ul>

<p  ng-show="liability_limitn==400000">Select the Deductible Amount :
<select ng-model="liability_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<h5 ng-if="liability_e_deductiblen == 900"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="liability_e_deductiblen == 900">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_e_premium_n">
<option value="">None</option>
<option value="2600" >$2600</option>
</select>
</ul>
<h5 ng-if="liability_e_deductiblen == 950"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="liability_e_deductiblen == 950">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_e_premium_n">
<option value="">None</option>
<option value="2400" >$2400</option>
</select>
</ul>
<h5 ng-if="liability_e_deductiblen == 1000"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="liability_e_deductiblen == 1000">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_e_premium_n">
<option value="">None</option>
<option value="2400" >$2400</option>
</select>
</ul>
<h5 ng-if="liability_e_deductiblen == 1100"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="liability_e_deductiblen == 1100">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_e_premium_n">
<option value="">None</option>
<option value="2350" >$2350</option>
</select>
</ul>
<h5 ng-if="liability_e_deductiblen == 1200"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="liability_e_deductiblen == 1200">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_e_premium_n">
<option value="">None</option>
<option value="2300" >$2300</option>
</select>
</ul>

<p  ng-show="liability_limitn==500000">Select the Deductible Amount :
<select ng-model="liability_f_deductiblen">
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>
<h5 ng-if="liability_f_deductiblen == 1150"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="liability_f_deductiblen == 1150">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_f_premium_n">
<option value="">None</option>
<option value="3200" >$3200</option>
</select>
</ul>
<h5 ng-if="liability_f_deductiblen == 1200"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="liability_f_deductiblen == 1200">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_f_premium_n">
<option value="">None</option>
<option value="3100" >$3100</option>
</select>
</ul>
<h5 ng-if="liability_f_deductiblen == 1250"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="liability_f_deductiblen == 1250">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_f_premium_n">
<option value="">None</option>
<option value="3000" >$3000</option>
</select>
</ul>
<h5 ng-if="liability_f_deductiblen == 1350"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="liability_f_deductiblen == 1350">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Auto Liability Six Month Premium is : 
<select ng-model="liability_f_premium_n">
<option value="">None</option>
<option value="2950" >$2950</option>
</select>
</ul>
<h5 ng-if="liability_f_deductiblen == 1450"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="liability_f_deductiblen == 1450">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Auto Liability Six Month Premium is :
<select ng-model="liability_f_premium_n">
<option value="">None</option>
<option value="2900" >$2900</option>
</select>
</ul>

<h3> COMPREHENSIVE AND COLLISION COVERAGE</h3>
<h4>Available Coverage :</h4>

<p>Select the Limit :
<input type="radio" ng-model="comprehensive_colision_limitn" value="90000" > $90,000
<input type="radio" ng-model="comprehensive_colision_limitn" value="100000" > $1,00,000
<input type="radio" ng-model="comprehensive_colision_limitn" value="200000" > $2,00,000
<input type="radio" ng-model="comprehensive_colision_limitn" value="300000" > $3,00,000
<input type="radio" ng-model="comprehensive_colision_limitn" value="400000" > $4,00,000
<input type="radio" ng-model="comprehensive_colision_limitn" value="500000" > $5,00,000
</p>
your selected limit : {{comprehensive_colision_limitn}}<br>

<p ng-show="comprehensive_colision_limitn == 90000" >Select the Deductible Amount :
<select ng-model="comprehensive_colision_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<h5 ng-if="comprehensive_colision_a_deductiblen == 125"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen == 125">
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_a_premium_n">
<option value="">None</option>
<option value="740" >$740</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_a_deductiblen == 175"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen == 175">
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_a_premium_n">
<option value="">None</option>
<option value="640" >$640</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_a_deductiblen == 225"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen == 225">
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_a_premium_n">
<option value="">None</option>
<option value="540" >$540</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_a_deductiblen == 325"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen == 325">
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_a_premium_n">
<option value="">None</option>
<option value="490" >$490</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_a_deductiblen == 425"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen == 425">
<li> The maximum payable for property damage : $40,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_a_premium_n">
<option value="">None</option>
<option value="440" >$440</option>
</select>
</ul>

<p ng-show="comprehensive_colision_limitn == 100000">Select the Deductible Amount :
<select  ng-model="comprehensive_colision_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<h5 ng-if="comprehensive_colision_b_deductiblen == 150"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen == 150">
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_b_premium_n">
<option value="">None</option>
<option value="500" >$500</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_b_deductiblen == 200"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen == 200">
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_b_premium_n">
<option value="">None</option>
<option value="400" >$400</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_b_deductiblen == 250"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen == 250">
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_b_premium_n">
<option value="">None</option>
<option value="300">$300</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_b_deductiblen == 350"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen == 350">
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_b_premium_n">
<option value="">None</option>
<option value="250" >$250</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_b_deductiblen == 450"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen == 450">
<li> The maximum payable for property damage : $50,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_b_premium_n">
<option value="">None</option>
<option value="200" >$200</option>
</select>
</ul>

<p  ng-show="comprehensive_colision_limitn == 200000">Select the Deductible Amount :
<select ng-model="comprehensive_colision_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>
<h5 ng-if="comprehensive_colision_c_deductiblen == 400"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen == 400">
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_c_premium_n">
<option value="">None</option>
<option value="1400" >$1400</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_c_deductiblen == 450"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen == 450">
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_c_premium_n">
<option value="">None</option>
<option value="1300" >$1300</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_c_deductiblen == 500"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen == 500">
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_c_premium_n">
<option value="">None</option>
<option value="1200" >$1200</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_c_deductiblen == 600"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen == 600">
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_c_premium_n">
<option value="">None</option>
<option value="1150" >$1150</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_c_deductiblen == 700"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen == 700">
<li> The maximum payable for property damage : $60,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_c_premium_n">
<option value="">None</option>
<option value="1100" >$1100</option>
</select>
</ul>

<p ng-show="comprehensive_colision_limitn == 300000">Select the Deductible Amount :
<select  ng-model="comprehensive_colision_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>
<h5 ng-if="comprehensive_colision_d_deductiblen == 650"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen == 650">
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_d_premium_n">
<option value="">None</option>
<option value="2000" >$2000</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_d_deductiblen == 700"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen == 700">
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_d_premium_n">
<option value="">None</option>
<option value="1900" >$1900</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_d_deductiblen == 750"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen == 750">
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_d_premium_n">
<option value="">None</option>
<option value="1800" >$1800</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_d_deductiblen == 850"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen == 850">
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_d_premium_n">
<option value="">None</option>
<option value="1750" >$1750</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_d_deductiblen == 950"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen == 950">
<li> The maximum payable for property damage : $70,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_d_premium_n">
<option value="">None</option>
<option value="1700" >$1700</option>
</select>
</ul>

<p ng-show="comprehensive_colision_limitn == 400000" >Select the Deductible Amount :
<select ng-model="comprehensive_colision_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<h5 ng-if="comprehensive_colision_e_deductiblen == 900"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen == 900">
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_e_premium_n">
<option value="">None</option>
<option value="2600" >$2600</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 950"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen == 950">
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_e_premium_n">
<option value="">None</option>
<option value="2500" >$2500</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1000"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen == 1000">
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_e_premium_n">
<option value="">None</option>
<option value="2400" >$2400</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1100"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen == 1100">
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_e_premium_n">
<option value="">None</option>
<option value="2350" >$2350</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1200"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen == 1200">
<li> The maximum payable for property damage : $80,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_e_premium_n">
<option value="">None</option>
<option value="2300" >$2300</option>
</select>
</ul>

<p ng-show="comprehensive_colision_limitn == 500000">Select the Deductible Amount :
<select  ng-model=comprehensive_colision_f_deductiblen>
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1150"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen == 1150">
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_f_premium_n">
<option value="">None</option>
<option value="3200" >$3200</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1200"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen == 1200">
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_f_premium_n">
<option value="">None</option>
<option value="3100" >$3100</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1250"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen == 1250">
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_f_premium_n">
<option value="">None</option>
<option value="3000" >$3000</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1350"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen == 1350">
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is :
<select ng-model="comprehensive_colision_f_premium_n">
<option value="">None</option>
<option value="2950" >$2950</option>
</select>
</ul>
<h5 ng-if="comprehensive_colision_e_deductiblen == 1450"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen == 1450">
<li> The maximum payable for property damage : $90,000</li>
<li>Please Select Your Comprehensive Collision Six Month Premium is : 
<select ng-model="comprehensive_colision_f_premium_n">
<option value="">None</option>
<option value="2900" >$2900</option>
</select>
</ul>

<h3> RENTAL REIMBURSEMENT COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the Limit :
<input type="radio" ng-model="rental_limitn" value="90000" > $90,000
<input type="radio" ng-model="rental_limitn" value="100000" > $1,00,000
<input type="radio" ng-model="rental_limitn" value="200000" > $2,00,000
<input type="radio" ng-model="rental_limitn" value="300000" > $3,00,000
<input type="radio" ng-model="rental_limitn" value="400000" > $4,00,000
<input type="radio" ng-model="rental_limitn" value="500000" > $5,00,000
</p>
your selected limit : {{rental_limitn}}<br>

<p ng-show="rental_limitn == 90000">Select the Deductible Amount :
<select  ng-model="rental_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<h5 ng-if="rental_a_deductiblen == 125"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="rental_a_deductiblen == 125">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_a_premium_n">
<option value="">None</option>
<option value="740" >$740</option>
</select>
</ul>
<h5 ng-if="rental_a_deductiblen == 175"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="rental_a_deductiblen == 175">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_a_premium_n">
<option value="">None</option>
<option value="640" >$640</option>
</select>
</ul>
<h5 ng-if="rental_a_deductiblen == 225"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="rental_a_deductiblen == 225">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is :
<select ng-model="rental_a_premium_n">
<option value="">None</option>
<option value="540" >$540</option>
</select>
</ul>
<h5 ng-if="rental_a_deductiblen == 325"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="rental_a_deductiblen == 325">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_a_premium_n">
<option value="">None</option>
<option value="490" >$490</option>
</select>
</ul>
<h5 ng-if="rental_a_deductiblen == 425"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="rental_a_deductiblen == 425">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_a_premium_n">
<option value="">None</option>
<option value="440" >$440</option>
</select>
</ul>

<p ng-show="rental_limitn == 100000">Select the Deductible Amount :
<select  ng-model="rental_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<h5 ng-if="rental_b_deductiblen == 150"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="rental_b_deductiblen == 150">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_b_premium_n">
<option value="">None</option>
<option value="500" >$500</option>
</select>
</ul>
<h5 ng-if="rental_b_deductiblen == 200"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="rental_b_deductiblen == 200">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_b_premium_n">
<option value="">None</option>
<option value="400" >$400</option>
</select>
</ul>
<h5 ng-if="rental_b_deductiblen == 250"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="rental_b_deductiblen == 250">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is :
<select ng-model="rental_b_premium_n">
<option value="">None</option>
<option value="300" >$300</option>
</select>
</ul>
<h5 ng-if="rental_b_deductiblen == 350"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="rental_b_deductiblen == 350">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_b_premium_n">
<option value="">None</option>
<option value="250" >$250</option>
</select>
</ul>
<h5 ng-if="rental_b_deductiblen == 450"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="rental_b_deductiblen == 450">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is :
<select ng-model="rental_b_premium_n">
<option value="">None</option>
<option value="200" >$200</option>
</select>
</ul>

<p ng-show="rental_limitn == 200000" >Select the Deductible Amount :
<select ng-model="rental_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>
<h5 ng-if="rental_c_deductiblen == 400"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="rental_c_deductiblen == 400">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_c_premium_n">
<option value="">None</option>
<option value="1400" >$1400</option>
</select>
</ul>
<h5 ng-if="rental_c_deductiblen == 450"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="rental_c_deductiblen == 450">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_c_premium_n">
<option value="">None</option>
<option value="$1300" >$1300</option>
</select>
</ul>
<h5 ng-if="rental_c_deductiblen == 500"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="rental_c_deductiblen == 500">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_c_premium_n">
<option value="">None</option>
<option value="1200" >$1200</option>
</select>
</ul>
<h5 ng-if="rental_c_deductiblen == 600"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="rental_c_deductiblen == 600">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_c_premium_n">
<option value="">None</option>
<option value="1150" >$1150</option>
</select>
</ul>
<h5 ng-if="rental_c_deductiblen == 700"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="rental_c_deductiblen == 700">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_c_premium_n">
<option value="">None</option>
<option value="1100" >$1100</option>
</select>
</ul>

<p ng-show="rental_limitn == 300000" >Select the Deductible Amount :
<select ng-model="rental_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>
<h5 ng-if="rental_d_deductiblen == 650"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="rental_d_deductiblen == 650">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_d_premium_n">
<option value="">None</option>
<option value="2000" >$2000</option>
</select>
</ul>
<h5 ng-if="rental_d_deductiblen == 700"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="rental_d_deductiblen == 700">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_d_premium_n">
<option value="">None</option>
<option value="1900" >$1900</option>
</select>
</ul>
<h5 ng-if="rental_d_deductiblen == 750"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="rental_d_deductiblen == 750">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_d_premium_n">
<option value="">None</option>
<option value="1800" >$1800</option>
</select>
</ul>
<h5 ng-if="rental_d_deductiblen == 850"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="rental_d_deductiblen == 850">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_d_premium_n">
<option value="">None</option>
<option value="1750" >$1750</option>
</select>
</ul>
<h5 ng-if="rental_d_deductiblen == 950"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="rental_d_deductiblen == 950">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_d_premium_n">
<option value="">None</option>
<option value="1700" >$1700</option>
</select>
</ul>

<p ng-show="rental_limitn == 400000">Select the Deductible Amount :
<select  ng-model="rental_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<h5 ng-if="rental_e_deductiblen == 900"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="rental_e_deductiblen == 900">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is :
<select ng-model="rental_e_premium_n">
<option value="">None</option>
<option value="2600" >$2600</option>
</select>
</ul>
<h5 ng-if="rental_e_deductiblen == 950"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="rental_e_deductiblen == 950">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_e_premium_n">
<option value="">None</option>
<option value="2500" >$2500</option>
</select>
</ul>
<h5 ng-if="rental_e_deductiblen == 1000"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="rental_e_deductiblen == 1000">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_e_premium_n">
<option value="">None</option>
<option value="2400" >$2400</option>
</select>
</ul>
<h5 ng-if="rental_e_deductiblen == 1100"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="rental_e_deductiblen == 1100">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_e_premium_n">
<option value="">None</option>
<option value="2350" >$2350</option>
</select>
</ul>
<h5 ng-if="rental_e_deductiblen == 1200"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="rental_e_deductiblen == 1200">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_e_premium_n">
<option value="">None</option>
<option value="2300" >$2300</option>
</select>
</ul>

<p ng-show="rental_limitn == 500000" >Select the Deductible Amount :
<select ng-model="rental_f_deductiblen">
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>
<h5 ng-if="rental_f_deductiblen == 1150"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="rental_f_deductiblen == 1150">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_f_premium_n">
<option value="">None</option>
<option value="3200" >$3200</option>
</select>
</ul>
<h5 ng-if="rental_f_deductiblen == 1200"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="rental_f_deductiblen == 1200">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is :
<select ng-model="rental_f_premium_n">
<option value="">None</option>
<option value="3100" >$3100</option>
</select>
</ul>
<h5 ng-if="rental_f_deductiblen == 1250"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="rental_f_deductiblen == 1250">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_f_premium_n">
<option value="">None</option>
<option value="3000" >$3000</option>
</select>
</ul>
<h5 ng-if="rental_f_deductiblen == 1350"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="rental_f_deductiblen == 1350">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is :
<select ng-model="rental_f_premium_n">
<option value="">None</option>
<option value="2950" >$2950</option>
</select>
</ul>
<h5 ng-if="rental_f_deductiblen == 1450"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="rental_f_deductiblen == 1450">
<li>Please Select Your Rental Car Reimbursement Six Month Premium is : 
<select ng-model="rental_f_premium_n">
<option value="">None</option>
<option value="2900" >$2900</option>
</select>
</ul>

<h3> UNINSURED AND UNDERINSURED MOTORIST COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the Limit :
<input type="radio" ng-model="unisured_underinsured_limitn" value="90000" > $90,000
<input type="radio" ng-model="unisured_underinsured_limitn" value="100000" > $1,00,000
<input type="radio" ng-model="unisured_underinsured_limitn" value="200000" > $2,00,000
<input type="radio" ng-model="unisured_underinsured_limitn" value="300000" > $3,00,000
<input type="radio" ng-model="unisured_underinsured_limitn" value="400000" > $4,00,000
<input type="radio" ng-model="unisured_underinsured_limitn" value="500000" > $5,00,000
</p>
your selected limit : {{unisured_underinsured_limitn}}<br>

<p ng-show="unisured_underinsured_limitn == 90000">Select the Deductible Amount :
<select  ng-model="unisured_underinsured_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<h5 ng-if="unisured_underinsured_a_deductiblen == 125"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen == 125">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_a_premium_n">
<option value="">None</option>
<option value="440" >$440</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_a_deductiblen == 175"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen == 175">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_a_premium_n">
<option value="">None</option>
<option value="640" >$640</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_a_deductiblen == 225"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen == 225">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_a_premium_n">
<option value="">None</option>
<option value="540" >$540</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_a_deductiblen == 325"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen == 325">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_a_premium_n">
<option value="">None</option>
<option value="490" >$490</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_a_deductiblen == 425"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen == 425">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_a_premium_n">
<option value="">None</option>
<option value="440" >$440</option>
</select>
</ul>

<p ng-show="unisured_underinsured_limitn == 100000">Select the Deductible Amount :
<select  ng-model="unisured_underinsuredb_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<h5 ng-if="unisured_underinsuredb_b_deductiblen == 150"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen == 150">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_b_premium_n">
<option value="">None</option>
<option value="500" >$500</option>
</select>
</ul>
<h5 ng-if="unisured_underinsuredb_b_deductiblen == 200"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen == 200">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_b_premium_n">
<option value="">None</option>
<option value="400" >$400</option>
</select>
</ul>
<h5 ng-if="unisured_underinsuredb_b_deductiblen == 250"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen == 250">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_b_premium_n">
<option value="">None</option>
<option value="300" >$300</option>
</select>
</ul>
<h5 ng-if="unisured_underinsuredb_b_deductiblen == 350"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen == 350">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_b_premium_n">
<option value="">None</option>
<option value="250" >$250</option>
</select>
</ul>
<h5 ng-if="unisured_underinsuredb_b_deductiblen == 450"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen == 450">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_b_premium_n">
<option value="">None</option>
<option value="200" >$200</option>
</select>
</ul>

<p  ng-show="unisured_underinsured_limitn == 200000">Select the Deductible Amount :
<select ng-model="unisured_underinsured_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>
<h5 ng-if="unisured_underinsured_c_deductiblen == 400"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen == 400">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_c_premium_n">
<option value="">None</option>
<option value="1400" >$1400</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_c_deductiblen == 450"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen == 450">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_c_premium_n">
<option value="">None</option>
<option value="1300" >$1300</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_c_deductiblen == 500"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen == 500">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_c_premium_n">
<option value="">None</option>
<option value="1200" >$1200</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_c_deductiblen == 600"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen == 600">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_c_premium_n">
<option value="">None</option>
<option value="1150" >$1150</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_c_deductiblen == 700"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen == 700">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_c_premium_n">
<option value="">None</option>
<option value="1100" >$1100</option>
</select>
</ul>

<p ng-show="unisured_underinsured_limitn == 300000">Select the Deductible Amount :
<select  ng-model="unisured_underinsured_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>
<h5 ng-if="unisured_underinsured_d_deductiblen == 650"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen == 650">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_d_premium_n">
<option value="">None</option>
<option value="2000" >$2000</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_d_deductiblen == 700"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen == 700">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_d_premium_n">
<option value="">None</option>
<option value="1900" >$1900</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_d_deductiblen == 750"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen == 750">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_d_premium_n">
<option value="">None</option>
<option value="1800" >$1800</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_d_deductiblen == 850"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen == 850">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_d_premium_n">
<option value="">None</option>
<option value="1750" >$1750</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_d_deductiblen == 950"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen == 950">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 

<select ng-model="unisured_underinsured_d_premium_n">
<option value="">None</option>
<option value="1700" >$1700</option>
</select>
</ul>

<p ng-show="unisured_underinsured_limitn == 400000">Select the Deductible Amount :
<select  ng-model="unisured_underinsured_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<h5 ng-if="unisured_underinsured_e_deductiblen == 900"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen == 900">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_e_premium_n">
<option value="">None</option>
<option value="2600" >$2600</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_e_deductiblen == 950"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen == 950">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_e_premium_n">
<option value="">None</option>
<option value="2500" >$2500</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_e_deductiblen == 1000"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen == 1000">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_e_premium_n">
<option value="">None</option>
<option value="2400" >$2400</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_e_deductiblen == 1100"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen == 1100">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_e_premium_n">
<option value="">None</option>
<option value="2350" >$2350</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_e_deductiblen == 1200"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen == 1200">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_e_premium_n">
<option value="">None</option>
<option value="2300" >$2300</option>
</select>
</ul>

<p  ng-show="unisured_underinsured_limitn == 500000">Select the Deductible Amount :
<select ng-model="unisured_underinsured_f_deductiblen">
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>
<h5 ng-if="unisured_underinsured_f_deductiblen == 1150"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1150">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_f_premium_n">
<option value="">None</option>
<option value="3200" >$3200</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_f_deductiblen == 1200"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1200">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_f_premium_n">
<option value="">None</option>
<option value="3100" >$3100</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_f_deductiblen == 1250"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1250">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_f_premium_n">
<option value="">None</option>
<option value="3000" >$3000</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_f_deductiblen == 1350"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1350">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is : 
<select ng-model="unisured_underinsured_f_premium_n">
<option value="">None</option>
<option value="2950" >$2950</option>
</select>
</ul>
<h5 ng-if="unisured_underinsured_f_deductiblen == 1450"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1450">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Unisured - Underinsured Six Month Premium is :
<select ng-model="unisured_underinsured_f_premium_n">
<option value="">None</option>
<option value="2900" >$2900</option>
</select>
</ul>

<h3> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION </h3>
<h4>Available Coverage :</h4>

<p>Select the Limit :
<input type="radio" ng-model="medical_PIP_limitn" value="90000" > $90,000
<input type="radio" ng-model="medical_PIP_limitn" value="100000" > $1,00,000
<input type="radio" ng-model="medical_PIP_limitn" value="200000" > $2,00,000
<input type="radio" ng-model="medical_PIP_limitn" value="300000" > $3,00,000
<input type="radio" ng-model="medical_PIP_limitn" value="400000" > $4,00,000
<input type="radio" ng-model="medical_PIP_limitn" value="500000" > $5,00,000
</p>
your selected limit : {{medical_PIP_limitn}}<br>

<p ng-show="medical_PIP_limitn == 90000">Select the Deductible Amount :
<select  ng-model="medical_PIP_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<h5 ng-if="medical_PIP_a_deductiblen == 125"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="medical_PIP_a_deductiblen == 125">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_a_premium_n">
<option value="">None</option>
<option value="740" >$740</option>
</select>
</ul>
<h5 ng-if="medical_PIP_a_deductiblen == 175"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="medical_PIP_a_deductiblen == 175">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_a_premium_n">
<option value="">None</option>
<option value="640" >$640</option>
</select>
</ul>
<h5 ng-if="medical_PIP_a_deductiblen == 225"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="medical_PIP_a_deductiblen == 225">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_a_premium_n">
<option value="">None</option>
<option value="540" >$540</option>
</select>
</ul>
<h5 ng-if="medical_PIP_a_deductiblen == 325"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="medical_PIP_a_deductiblen == 325">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_a_premium_n">
<option value="">None</option>
<option value="490" >$490</option>
</select>
</ul>
<h5 ng-if="medical_PIP_a_deductiblen == 425"> Plan Details for Limit $90,000 </h5>
<ul type="disc" ng-show="medical_PIP_a_deductiblen == 425">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_a_premium_n">
<option value="">None</option>
<option value="440" >$440</option>
</select>
</ul>

<p ng-show="medical_PIP_limitn == 100000">Select the Deductible Amount :
<select  ng-model="medical_PIP_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<h5 ng-if="medical_PIP_b_deductiblen == 150"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_b_deductiblen == 150">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_b_premium_n">
<option value="">None</option>
<option value="500" >$500</option>
</select>
</ul>
<h5 ng-if="medical_PIP_b_deductiblen == 200"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_b_deductiblen == 200">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_b_premium_n">
<option value="">None</option>
<option value="400" >$400</option>
</select>
</ul>
<h5 ng-if="medical_PIP_b_deductiblen == 250"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_b_deductiblen == 250">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_b_premium_n">
<option value="">None</option>
<option value="300" >$300</option>
</select>
</ul>
<h5 ng-if="medical_PIP_b_deductiblen == 350"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_b_deductiblen == 350">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_b_premium_n">
<option value="">None</option>
<option value="250" >$250</option>
</select>
</ul>
<h5 ng-if="medical_PIP_b_deductiblen == 450"> Plan Details for Limit $1,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_b_deductiblen == 450">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_b_premium_n">
<option value="">None</option>
<option value="200" >$200</option>
</select>
</ul>

<p ng-show="medical_PIP_limitn == 200000">Select the Deductible Amount :
<select  ng-model="medical_PIP_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>
<h5 ng-if="medical_PIP_c_deductiblen == 400"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_c_deductiblen == 400">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_c_premium_n">
<option value="">None</option>
<option value="1400" >$1400</option>
</select>
</ul>
<h5 ng-if="medical_PIP_c_deductiblen == 450"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_c_deductiblen == 450">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_c_premium_n">
<option value="">None</option>
<option value="1300 " >$1300 </option>
</select>
</ul>
<h5 ng-if="medical_PIP_c_deductiblen == 500"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_c_deductiblen == 500">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_c_premium_n">
<option value="">None</option>
<option value="1200" >$1200</option>
</select>
</ul>
<h5 ng-if="medical_PIP_c_deductiblen == 600"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_c_deductiblen == 600">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_c_premium_n">
<option value="">None</option>
<option value="1150" >$1150</option>
</select>
</ul>
<h5 ng-if="medical_PIP_c_deductiblen == 700"> Plan Details for Limit $2,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_c_deductiblen == 700">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :

<select ng-model="medical_PIP_c_premium_n">
<option value="">None</option>
<option value="1100" >$1100</option>
</select>
</ul>

<p ng-show="medical_PIP_limitn == 300000">Select the Deductible Amount :
<select  ng-model="medical_PIP_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>
<h5 ng-if="medical_PIP_d_deductiblen == 650"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_d_deductiblen == 650">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 

<select ng-model="medical_PIP_d_premium_n">
<option value="">None</option>
<option value="2000" >$2000</option>
</select>
</ul>
<h5 ng-if="medical_PIP_d_deductiblen == 700"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_d_deductiblen == 700">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_d_premium_n">
<option value="">None</option>
<option value="1900" >$1900</option>
</select>
</ul>
<h5 ng-if="medical_PIP_d_deductiblen == 750"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_d_deductiblen == 750">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_d_premium_n">
<option value="">None</option>
<option value="1800" >$1800</option>
</select>
</ul>
<h5 ng-if="medical_PIP_d_deductiblen == 850"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_d_deductiblen == 850">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_d_premium_n">
<option value="">None</option>
<option value="1750" >$1750</option>
</select>
</ul>
<h5 ng-if="medical_PIP_d_deductiblen == 950"> Plan Details for Limit $3,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_d_deductiblen == 950">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_d_premium_n">
<option value="">None</option>
<option value="1700" >$1700</option>
</select>
</ul>

<p  ng-show="medical_PIP_limitn == 400000">Select the Deductible Amount :
<select ng-model="medical_PIP_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<h5 ng-if="medical_PIP_e_deductiblen == 900"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_e_deductiblen == 900">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_e_premium_n">
<option value="">None</option>
<option value="2600" >$2600</option>
</select>
</ul>
<h5 ng-if="medical_PIP_e_deductiblen == 950"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_e_deductiblen == 950">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Medical/PIPSix Month Premium is : 
<select ng-model="medical_PIP_e_premium_n">
<option value="">None</option>
<option value="2500" > $2500 </option>
</select>
</ul>
<h5 ng-if="medical_PIP_e_deductiblen == 1000"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_e_deductiblen == 1000">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_e_premium_n">
<option value="">None</option>
<option value="2400" > $2400 </option>
</select>
</ul>
<h5 ng-if="medical_PIP_e_deductiblen == 1100"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_e_deductiblen == 1100">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_e_premium_n">
<option value="">None</option>
<option value="2350" > $2350 </option>
</select>
</ul>
<h5 ng-if="medical_PIP_e_deductiblen == 1200"> Plan Details for Limit $4,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_e_deductiblen == 1200">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_e_premium_n">
<option value="">None</option>
<option value="2300" >$2300</option>
</select>
</ul>

<p  ng-show="medical_PIP_limitn==500000">Select the Deductible Amount :
<select ng-model="medical_PIP_f_deductiblen">
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
<h5 ng-if="medical_PIP_f_deductiblen == 1150"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1150">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_f_premium_n">
<option value="">None</option>
<option value="3200" > $3200 </option>
</select>
</ul>
<h5 ng-if="medical_PIP_f_deductiblen == 1200"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1200">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_f_premium_n">
<option value="">None</option>
<option value="3100" >$3100</option>
</select>
</ul>
<h5 ng-if="medical_PIP_f_deductiblen == 1250"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1250">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is :
<select ng-model="medical_PIP_f_premium_n">
<option value="">None</option>
<option value="3000" >3000</option>
</select>
</ul>
<h5 ng-if="medical_PIP_f_deductiblen == 1350"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1350">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_f_premium_n">
<option value="">None</option>
<option value="2950" > $2950 </option>
</select>
</ul>
<h5 ng-if="medical_PIP_f_deductiblen == 1450"> Plan Details for Limit $5,00,000 </h5>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1450">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Please Select Your Medical/PIP Six Month Premium is : 
<select ng-model="medical_PIP_f_premium_n">
<option value="">None</option>
<option value="2900" > $2900 </option>
</select>
</ul>


<input type="button" ng-click="showplan()" value="Show My Total Details">
<p>Your Total Limit = {{total_limit_n}} </p>
<p>Your Total deductible = {{total_deductible_n}}</p>

<input type="submit" value="Submit">
<input type="button" value="cancel"> 

</div>


</form>

</body>
</html>