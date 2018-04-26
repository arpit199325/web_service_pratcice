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
<option value="90000">$90000</option>
<option value="100000">$100000</option>
<option value="200000">$200000</option>
<option value="300000">$300000</option>
<option value="400000">$400000</option>
<option value="500000">$500000</option>
</select><br>
your selected limit : {{liability_limitn}}<br>
</p>

<p ng-show="liability_limitn==90000">Select the Deductible Amount :
<select  ng-model="liability_a_deductiblen" required>
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<ul type="disc" ng-show="liability_a_deductiblen ==125">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Select Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_a_premium_n" value="740"> $740</li>
</ul>

<ul type="disc" ng-show="liability_a_deductiblen ==175">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Select Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_a_premium_n" value="640"> $640</li>
</ul>

<ul type="disc" ng-show="liability_a_deductiblen ==225">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Select Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_a_premium_n" value="540"> $540</li>
</ul>

<ul type="disc" ng-show="liability_a_deductiblen ==325">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_a_premium_n" value="490"> $490</li>
</ul>
<ul type="disc" ng-show="liability_a_deductiblen ==425">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_a_premium_n" value="440"> $440</li>
</ul>

<p ng-show="liability_limitn==100000">Select the Deductible Amount :
<select  ng-model="liability_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>

<ul type="disc" ng-show="liability_b_deductiblen ==150">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_b_premium_n" value="500"> $500</li>
</ul>
<ul type="disc" ng-show="liability_b_deductiblen ==200">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_b_premium_n" value="400"> $400</li>
</ul>
<ul type="disc" ng-show="liability_b_deductiblen ==250">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_b_premium_n" value="300"> $300</li>
</ul>
<ul type="disc" ng-show="liability_b_deductiblen ==350">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_b_premium_n" value="250"> $250</li>
</ul>
<ul type="disc" ng-show="liability_b_deductiblen ==450">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_b_premium_n" value="200"> $200</li>
</ul>

<p ng-show="liability_limitn==200000">Select the Deductible Amount :
<select  ng-model="liability_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>

<ul type="disc" ng-show="liability_c_deductiblen ==400">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_c_premium_n" value="1400"> $1400</li>
</ul>
<ul type="disc" ng-show="liability_c_deductiblen ==450">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_c_premium_n" value="1300"> $1300</li>
</ul>
<ul type="disc" ng-show="liability_c_deductiblen ==500">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_c_premium_n" value="1200"> $1200</li>
</ul>
<ul type="disc" ng-show="liability_c_deductiblen ==600">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_c_premium_n" value="1150"> $1150</li>
</ul>
<ul type="disc" ng-show="liability_c_deductiblen ==700">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_c_premium_n" value="1100"> $1100</li>
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

<ul type="disc" ng-show="liability_d_deductiblen ==650">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_d_premium_n" value="2000"> $2000</li>
</ul>
<ul type="disc" ng-show="liability_d_deductiblen ==700">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_d_premium_n" value="1900"> $1900</li>
</ul>
<ul type="disc" ng-show="liability_d_deductiblen ==750">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_d_premium_n" value="1800"> $1800</li>
</ul>
<ul type="disc" ng-show="liability_d_deductiblen ==850">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_d_premium_n" value="1750"> $1750</li>
</ul>
<ul type="disc" ng-show="liability_d_deductiblen ==950">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_d_premium_n" value="1700"> $1700</li>
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

<ul type="disc" ng-show="liability_e_deductiblen ==900">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_e_premium_n" value="2600"> $2600</li>
</ul>
<ul type="disc" ng-show="liability_e_deductiblen ==950">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_e_premium_n" value="2500"> $2500</li>
</ul>
<ul type="disc" ng-show="liability_e_deductiblen ==1000">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_e_premium_n" value="2400"> $2400</li>
</ul>
<ul type="disc" ng-show="liability_e_deductiblen ==1100">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_e_premium_n" value="2350"> $2350</li>
</ul>
<ul type="disc" ng-show="liability_e_deductiblen ==1200">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_e_premium_n" value="2300"> $2300</li>
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

<ul type="disc" ng-show="liability_f_deductiblen ==1150">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_f_premium_n" value="3200"> $3200</li>
</ul>
<ul type="disc" ng-show="liability_f_deductiblen ==1200">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_f_premium_n" value="3100"> $3100</li>
</ul>
<ul type="disc" ng-show="liability_f_deductiblen ==1250">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_f_premium_n" value="3000"> $3000</li>
</ul>
<ul type="disc" ng-show="liability_f_deductiblen ==1350">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_f_premium_n" value="2950"> $2950</li>
</ul>
<ul type="disc" ng-show="liability_f_deductiblen ==1450">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="liability_f_premium_n" value="2900"> $2900</li>
</ul>

<h3> COMPREHENSIVE AND COLLISION COVERAGE</h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="comprehensive_colision_limitn" >
<option value="">None</option>
<option value="90000">$90000</option>
<option value="100000">$100000</option>
<option value="200000">$200000</option>
<option value="300000">$300000</option>
<option value="400000">$400000</option>
<option value="500000">$500000</option>
</select><br>
your selected limit : {{comprehensive_colision_limitn}}<br>

<p ng-show="comprehensive_colision_limitn==90000" >Select the Deductible Amount :
<select ng-model="comprehensive_colision_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>

<ul type="disc" ng-show="comprehensive_colision_a_deductiblen ==125">
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_a_premium_n" value="740"> $740</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen ==175">
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_a_premium_n" value="640"> $640</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen ==225">
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_a_premium_n" value="540"> $540</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen ==325">
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_a_premium_n" value="490"> $490</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_a_deductiblen ==425">
<li> The maximum payable for property damage : $40,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_a_premium_n" value="440"> $440</li>
</ul>

<p ng-show="comprehensive_colision_limitn==100000">Select the Deductible Amount :
<select  ng-model="comprehensive_colision_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>

<ul type="disc" ng-show="comprehensive_colision_b_deductiblen==150">
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_b_premium_n" value="500"> $500</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen==200">
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_b_premium_n" value="400"> $400</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen==250">
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_b_premium_n" value="300"> $300</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen==350">
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_b_premium_n" value="250"> $250</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_b_deductiblen==450">
<li> The maximum payable for property damage : $50,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_b_premium_n" value="200"> $200</li>
</ul>

<p  ng-show="comprehensive_colision_limitn==200000">Select the Deductible Amount :
<select ng-model="comprehensive_colision_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>

<ul type="disc" ng-show="comprehensive_colision_c_deductiblen ==400">
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_c_premium_n" value="1400"> $1400</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen ==450">
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_c_premium_n" value="1300"> $1300</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen ==500">
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_c_premium_n" value="1200"> $1200</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen ==600">
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_c_premium_n" value="1150"> $1150</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_c_deductiblen ==700">
<li> The maximum payable for property damage : $60,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_c_premium_n" value="1100"> $1100</li>
</ul>

<p ng-show="comprehensive_colision_limitn==300000">Select the Deductible Amount :
<select  ng-model="comprehensive_colision_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>

<ul type="disc" ng-show="comprehensive_colision_d_deductiblen ==650">
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_d_premium_n" value="2000"> $2000</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen ==700">
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_d_premium_n" value="1900"> $1900</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen ==750">
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_d_premium_n" value="1800"> $1800</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen ==850">
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_d_premium_n" value="1750"> $1750</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_d_deductiblen ==950">
<li> The maximum payable for property damage : $70,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_d_premium_n" value="1700"> $1700</li>
</ul>

<p ng-show="comprehensive_colision_limitn==400000" >Select the Deductible Amount :
<select ng-model="comprehensive_colision_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>

<ul type="disc" ng-show="comprehensive_colision_e_deductiblen ==900">
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_e_premium_n" value="2600"> $2600</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen ==950">
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_e_premium_n" value="2500"> $2500</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen ==1000">
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_e_premium_n" value="2400"> $2400</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen ==1100">
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_e_premium_n" value="2350"> $2350</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_e_deductiblen ==1200">
<li> The maximum payable for property damage : $80,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_e_premium_n" value="2300"> $2300</li>
</ul>

<p ng-show="comprehensive_colision_limitn==500000">Select the Deductible Amount :
<select  ng-model=comprehensive_colision_f_deductiblen>
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>

<ul type="disc" ng-show="comprehensive_colision_f_deductiblen ==1150">
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_f_premium_n" value="3200"> $3200</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen ==1200">
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_f_premium_n" value="3100"> $3100</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen ==1250">
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_f_premium_n" value="3000"> $3000</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen ==1350">
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_f_premium_n" value="2950"> $2950</li>
</ul>
<ul type="disc" ng-show="comprehensive_colision_f_deductiblen ==1450">
<li> The maximum payable for property damage : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="comprehensive_colision_f_premium_n" value="2900"> $2900</li>
</ul>

<h3> RENTAL REIMBURSEMENT COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="rental_limitn" >
<option value="">None</option>
<option value="90000">$90000</option>
<option value="100000">$100000</option>
<option value="200000">$200000</option>
<option value="300000">$300000</option>
<option value="400000">$400000</option>
<option value="500000">$500000</option>
</select><br>
your selected limit : {{rental_limitn}}<br>
</p>

<p ng-show="rental_limitn==90000">Select the Deductible Amount :
<select  ng-model="rental_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>

<ul type="disc" ng-show="rental_a_deductiblen ==125">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_a_premium_n" value="740"> $740</li>
</ul>
<ul type="disc" ng-show="rental_a_deductiblen ==175">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_a_premium_n" value="640"> $640</li>
</ul>
<ul type="disc" ng-show="rental_a_deductiblen ==225">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_a_premium_n" value="540"> $540</li>
</ul>
<ul type="disc" ng-show="rental_a_deductiblen ==325">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_a_premium_n" value="490"> $490</li>
</ul>
<ul type="disc" ng-show="rental_a_deductiblen ==425">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_a_premium_n" value="440"> $440</li>
</ul>

<p ng-show="rental_limitn==100000">Select the Deductible Amount :
<select  ng-model="rental_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>

<ul type="disc" ng-show="rental_b_deductiblen ==150">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_b_premium_n" value="500"> $500</li>
</ul>
<ul type="disc" ng-show="rental_b_deductiblen ==200">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_b_premium_n" value="400"> $400</li>
</ul>
<ul type="disc" ng-show="rental_b_deductiblen ==250">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_b_premium_n" value="300"> $300</li>
</ul>
<ul type="disc" ng-show="rental_b_deductiblen ==350">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_b_premium_n" value="250"> $250</li>
</ul>
<ul type="disc" ng-show="rental_b_deductiblen ==450">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_b_premium_n" value="200"> $200</li>
</ul>

<p ng-show="rental_limitn==200000" >Select the Deductible Amount :
<select ng-model="rental_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>

<ul type="disc" ng-show="rental_c_deductiblen ==400">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_c_premium_n" value="1400"> $1400</li>
</ul>
<ul type="disc" ng-show="rental_c_deductiblen ==450">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_c_premium_n" value="1300"> $1300</li>
</ul>
<ul type="disc" ng-show="rental_c_deductiblen ==500">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_c_premium_n" value="1200"> $1200</li>
</ul>
<ul type="disc" ng-show="rental_c_deductiblen ==600">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_c_premium_n" value="1150"> $1150</li>
</ul>
<ul type="disc" ng-show="rental_c_deductiblen ==700">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_c_premium_n" value="1100"> $1100</li>
</ul>

<p ng-show="rental_limitn==300000" >Select the Deductible Amount :
<select ng-model="rental_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>

<ul type="disc" ng-show="rental_d_deductiblen ==650">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_d_premium_n" value="2000"> $2000</li>
</ul>
<ul type="disc" ng-show="rental_d_deductiblen ==700">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_d_premium_n" value="1900"> $1900</li>
</ul>
<ul type="disc" ng-show="rental_d_deductiblen ==750">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_d_premium_n" value="1800"> $1800</li>
</ul>
<ul type="disc" ng-show="rental_d_deductiblen ==850">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_d_premium_n" value="1750"> $1750</li>
</ul>
<ul type="disc" ng-show="rental_d_deductiblen ==950">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_d_premium_n" value="1700"> $1700</li>
</ul>

<p ng-show="rental_limitn==400000">Select the Deductible Amount :
<select  ng-model="rental_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<ul type="disc" ng-show="rental_e_deductiblen ==900">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_e_premium_n" value="2600"> $2600</li>
</ul>
<ul type="disc" ng-show="rental_e_deductiblen ==950">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_e_premium_n" value="2500"> $2500</li>
</ul>
<ul type="disc" ng-show="rental_e_deductiblen ==1000">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_e_premium_n" value="2400"> $2400</li>
</ul>
<ul type="disc" ng-show="rental_e_deductiblen ==1100">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_e_premium_n" value="2350"> $2350</li>
</ul>
<ul type="disc" ng-show="rental_e_deductiblen ==1200">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_e_premium_n" value="2300"> $2300</li>
</ul>

<p ng-show="rental_limitn==500000" >Select the Deductible Amount :
<select ng-model="rental_f_deductiblen">
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>
<ul type="disc" ng-show="rental_f_deductiblen == 1150">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_f_premium_n" value="3200"> $3200</li>
</ul>
<ul type="disc" ng-show="rental_f_deductiblen ==1200">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_f_premium_n" value="3100"> $3100</li>
</ul>
<ul type="disc" ng-show="rental_f_deductiblen ==1250">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_f_premium_n" value="3000"> $3000</li>
</ul>
<ul type="disc" ng-show="rental_f_deductiblen ==1350">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_f_premium_n" value="2950"> $2950</li>
</ul>
<ul type="disc" ng-show="rental_f_deductiblen ==1450">
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="rental_f_premium_n" value="2900"> $2900</li>
</ul>

<h3> UNINSURED AND UNDERINSURED MOTORIST COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="unisured_underinsured_limitn" >
<option value="">None</option>
<option value="90000">$90000</option>
<option value="100000">$100000</option>
<option value="200000">$200000</option>
<option value="300000">$300000</option>
<option value="400000">$400000</option>
<option value="500000">$500000</option>
</select><br>
your selected limit : {{unisured_underinsured_limitn}}<br>
</p>

<p ng-show="unisured_underinsured_limitn==90000">Select the Deductible Amount :
<select  ng-model="unisured_underinsured_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen ==125">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_a_premium_n" value="440"> $440</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen ==175">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_a_premium_n" value="640"> $640</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen ==225">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_a_premium_n" value="540"> $540</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen ==325">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_a_premium_n" value="490"> $490</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_a_deductiblen ==425">
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_a_premium_n" value="440"> $440</li>
</ul>

<p ng-show="unisured_underinsured_limitn==100000">Select the Deductible Amount :
<select  ng-model="unisured_underinsuredb_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen ==150">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_b_premium_n" value="500"> $500</li>
</ul>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen ==200">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_b_premium_n" value="400"> $400</li>
</ul>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen ==250">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_b_premium_n" value="300"> $300</li>
</ul>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen ==350">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_b_premium_n" value="250"> $250</li>
</ul>
<ul type="disc" ng-show="unisured_underinsuredb_b_deductiblen ==450">
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_b_premium_n" value="200"> $200</li>
</ul>

<p  ng-show="unisured_underinsured_limitn==200000">Select the Deductible Amount :
<select ng-model="unisured_underinsured_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>

<ul type="disc" ng-show="unisured_underinsured_c_deductiblen ==400">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_c_premium_n" value="1400"> $1400</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen ==450">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_c_premium_n" value="1300"> $1300</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen ==500">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_c_premium_n" value="1200"> $1200</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen ==600">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_c_premium_n" value="1150"> $1150</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_c_deductiblen ==700">
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_c_premium_n" value="1100"> $1100</li>
</ul>

<p ng-show="unisured_underinsured_limitn==300000">Select the Deductible Amount :
<select  ng-model="unisured_underinsured_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>

<ul type="disc" ng-show="unisured_underinsured_d_deductiblen ==650">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_d_premium_n" value="2000"> $2000</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen ==700">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_d_premium_n" value=1900"> $1900</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen ==750">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_d_premium_n" value="1800"> $1800</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen ==850">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_d_premium_n" value="1750"> $1750</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_d_deductiblen ==950">
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_d_premium_n" value="1700"> $1700</li>
</ul>

<p ng-show="unisured_underinsured_limitn==400000">Select the Deductible Amount :
<select  ng-model="unisured_underinsured_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen ==900">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_e_premium_n" value="2600"> $2600</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen ==950">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_e_premium_n" value="2500"> $2500</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen ==1000">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_e_premium_n" value="2400"> $2400</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen ==1100">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_e_premium_n" value="2350"> $2350</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_e_deductiblen ==1200">
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_e_premium_n" value="2300"> $2300</li>
</ul>

<p  ng-show="unisured_underinsured_limitn==500000">Select the Deductible Amount :
<select ng-model="unisured_underinsured_f_deductiblen">
<option value="">None</option>
<option value="1150">$1150</option>
<option value="1200">$1200</option>
<option value="1250">$1250</option>
<option value="1350">$1350</option>
<option value="1450">$1450</option>
</select>
</p>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1150">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_f_premium_n" value="3200"> $3200</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1200">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_f_premium_n" value="3100"> $3100</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1250">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_f_premium_n" value="3000"> $3000</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1350">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_f_premium_n" value="2950"> $2950</li>
</ul>
<ul type="disc" ng-show="unisured_underinsured_f_deductiblen == 1450">
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="unisured_underinsured_f_premium_n" value="2900"> $2900</li>
</ul>

<h3> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="medical_PIP_limitn" >
<option value="">None</option>
<option value="90000">$90000</option>
<option value="100000">$100000</option>
<option value="200000">$200000</option>
<option value="300000">$300000</option>
<option value="400000">$400000</option>
<option value="500000">$500000</option>
</select><br>
your selected limit : {{medical_PIP_limitn}}<br>
</p>

<p ng-show="medical_PIP_limitn==90000">Select the Deductible Amount :
<select  ng-model="medical_PIP_a_deductiblen">
<option value="">None</option>
<option value="125">$125</option>
<option value="175">$175</option>
<option value="225">$225</option>
<option value="325">$325</option>
<option value="425">$425</option>
</select>
</p>
<ul type="disc" ng-show="medical_PIP_a_deductiblen ==125">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_a_premium_n" value="740"> $740</li>
</ul>
<ul type="disc" ng-show="medical_PIP_a_deductiblen ==175">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_a_premium_n" value="640"> $640</li>
</ul>
<ul type="disc" ng-show="medical_PIP_a_deductiblen ==225">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_a_premium_n" value="540"> $540</li>
</ul>
<ul type="disc" ng-show="medical_PIP_a_deductiblen ==325">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_a_premium_n" value="490"> $490</li>
</ul>
<ul type="disc" ng-show="medical_PIP_a_deductiblen ==425">
<li> The maximum payment for bodily injury per person : $40,000</li>
<li> The maximum payable for bodily injury per accident : $90,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_a_premium_n" value="440"> $440</li>
</ul>

<p ng-show="medical_PIP_limitn==100000">Select the Deductible Amount :
<select  ng-model="medical_PIP_b_deductiblen">
<option value="">None</option>
<option value="150">$150</option>
<option value="200">$200</option>
<option value="250">$250</option>
<option value="350">$350</option>
<option value="450">$450</option>
</select>
</p>
<ul type="disc" ng-show="medical_PIP_b_deductiblen ==150">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_b_premium_n" value="500"> $500</li>
</ul>
<ul type="disc" ng-show="medical_PIP_b_deductiblen ==200">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_b_premium_n" value="400"> $400</li>
</ul>
<ul type="disc" ng-show="medical_PIP_b_deductiblen ==250">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_b_premium_n" value="300"> $300</li>
</ul>
<ul type="disc" ng-show="medical_PIP_b_deductiblen ==350">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_b_premium_n" value="250"> $250</li>
</ul>
<ul type="disc" ng-show="medical_PIP_b_deductiblen ==450">
<li> The maximum payment for bodily injury per person : $50,000</li>
<li> The maximum payable for bodily injury per accident : $1,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_b_premium_n" value="200"> $200</li>
</ul>

<p ng-show="medical_PIP_limitn==200000">Select the Deductible Amount :
<select  ng-model="medical_PIP_c_deductiblen">
<option value="">None</option>
<option value="400">$400</option>
<option value="450">$450</option>
<option value="500">$500</option>
<option value="600">$600</option>
<option value="700">$700</option>
</select>
</p>

<ul type="disc" ng-show="medical_PIP_c_deductiblen ==400">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_c_premium_n" value="1400"> $1400</li>
</ul>
<ul type="disc" ng-show="medical_PIP_c_deductiblen ==450">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_c_premium_n" value="1300"> $1300 </li>
</ul>
<ul type="disc" ng-show="medical_PIP_c_deductiblen ==500">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_c_premium_n" value="1200"> $1200</li>
</ul>
<ul type="disc" ng-show="medical_PIP_c_deductiblen ==600">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_c_premium_n" value="1150"> $1150</li>
</ul>
<ul type="disc" ng-show="medical_PIP_c_deductiblen ==700">
<li> The maximum payment for bodily injury per person : $60,000</li>
<li> The maximum payable for bodily injury per accident : $2,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_c_premium_n" value="1100"> $1100</li>
</ul>

<p ng-show="medical_PIP_limitn==300000">Select the Deductible Amount :
<select  ng-model="medical_PIP_d_deductiblen">
<option value="">None</option>
<option value="650">$650</option>
<option value="700">$700</option>
<option value="750">$750</option>
<option value="850">$850</option>
<option value="950">$950</option>
</select>
</p>

<ul type="disc" ng-show="medical_PIP_d_deductiblen ==650">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_d_premium_n" value="2000"> $2000</li>
</ul>
<ul type="disc" ng-show="medical_PIP_d_deductiblen ==700">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_d_premium_n" value="1900"> $1900</li>
</ul>
<ul type="disc" ng-show="medical_PIP_d_deductiblen ==750">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_d_premium_n" value="1800"> $1800</li>
</ul>
<ul type="disc" ng-show="medical_PIP_d_deductiblen ==850">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_d_premium_n" value="1750"> $1750</li>
</ul>
<ul type="disc" ng-show="medical_PIP_d_deductiblen ==950">
<li> The maximum payment for bodily injury per person : $70,000</li>
<li> The maximum payable for bodily injury per accident : $3,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_d_premium_n" value="1700"> $1700</li>
</ul>

<p  ng-show="medical_PIP_limitn==400000">Select the Deductible Amount :
<select ng-model="medical_PIP_e_deductiblen">
<option value="">None</option>
<option value="900">$900</option>
<option value="950">$950</option>
<option value="1000">$1000</option>
<option value="1100">$1100</option>
<option value="1200">$1200</option>
</select>
</p>
<ul type="disc" ng-show="medical_PIP_e_deductiblen ==900">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_e_premium_n" value="2600"> $2600</li>
</ul>
<ul type="disc" ng-show="medical_PIP_e_deductiblen ==950">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_e_premium_n" value="2500"> $2500</li>
</ul>
<ul type="disc" ng-show="medical_PIP_e_deductiblen ==1000">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_e_premium_n" value="2400"> $2400</li>
</ul>
<ul type="disc" ng-show="medical_PIP_e_deductiblen ==1100">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_e_premium_n" value="2350"> $2350</li>
</ul>
<ul type="disc" ng-show="medical_PIP_e_deductiblen ==1200">
<li> The maximum payment for bodily injury per person : $80,000</li>
<li> The maximum payable for bodily injury per accident : $4,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_e_premium_n" value="2300"> $2300</li>
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
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1150">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_f_premium_n" value="3200"> $3200</li>
</ul>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1200">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_f_premium_n" value="3100"> 3100</li>
</ul>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1250">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_f_premium_n" value="3000"> $3000</li>
</ul>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1350">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_f_premium_n" value="2950"> $2950</li>
</ul>
<ul type="disc" ng-show="medical_PIP_f_deductiblen == 1450">
<li> The maximum payment for bodily injury per person : $90,000</li>
<li> The maximum payable for bodily injury per accident : $5,00,000</li>
<li>Your Liability Six Month Premium is : <input  type="radio" ng-model="medical_PIP_f_premium_n" value="2900"> $2900</li>
</ul>

</div>

<input type="button" ng-click="showplan()" value="Show My Total Details">
<p>Your Toatal Limit = {{total_limit_n}} </p>

<input type="submit" ng-click="submitcoverage()" value="Submit">
<input type="button" value="cancel"> 

</form>

</body>
</html>