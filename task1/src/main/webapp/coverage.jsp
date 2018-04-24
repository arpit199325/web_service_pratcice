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
<select ng-model="liability_limitn" >
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select>
your selected limit : {{liability_limitn}}
</p>

<p ng-if="liability_limitn==100000">Select the Deductible :
<select ng-model="liability_a_deductible" >
<option value="45000">$45000</option>
<option value="40000">$40000</option>
</select>

your selected deductible : {{liability_a_deductible}}

</p>

<p ng-if="liability_limitn==90000">Select the Deductible :
<select ng-model="liability_b_deductible" >
<option value="35000">$35000</option>
<option value="30000">$30000</option>
</select>

your selected deductible : {{liability_b_deductible}}

</p>

<p ng-if="liability_limitn==80000">Select the Deductible :
<select ng-model="liability_c_deductible" >
<option value="25000">$25000</option>
<option value="20000">$20000</option>
</select>
your selected deductible : {{liability_c_deductible}}

</p>

<p ng-if="liability_limitn==70000">Select the Deductible :
<select ng-model="liability_d_deductible" >
<option value="15000">$15000</option>
<option value="10000">$10000</option>
</select>
your selected deductible : {{liability_d_deductible}}
</p>

<p ng-if="liability_limitn==60000">Select the Deductible :
<select ng-model="liability_e_deductible" >
<option value="5000">$5000</option>
<option value="1000">$1000</option>
</select>
your selected deductible : {{liability_e_deductible}}
</p>

<h3> COMPREHENSIVE AND COLLISION COVERAGE</h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="comprehensive_colision_limitn" >
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select>
</p>

<p ng-if="comprehensive_colision_limitn==100000">Select the Deductible :
<select ng-model="comprehensive_colision_a_deductible" >
<option value="45000">$45000</option>
<option value="40000">$40000</option>
</select>
your selected deductible : {{comprehensive_colision_a_deductible}}
</p>

<p ng-if="comprehensive_colision_limitn==90000">Select the Deductible :
<select ng-model="comprehensive_colision_b_deductible" >
<option value="35000">$35000</option>
<option value="30000">$30000</option>
</select>
your selected deductible : {{comprehensive_colision_b_deductible}}
</p>

<p ng-if="comprehensive_colision_limitn==80000">Select the Deductible :
<select ng-model="comprehensive_colision_c_deductible" >
<option value="25000">$25000</option>
<option value="20000">$20000</option>
</select>
your selected deductible : {{comprehensive_colision_c_deductible}}
</p>

<p ng-if="comprehensive_colision_limitn==70000">Select the Deductible :
<select ng-model="comprehensive_colision_d_deductible" >
<option value="15000">$15000</option>
<option value="10000">$10000</option>
</select>
your selected deductible : {{comprehensive_colision_d_deductible}}
</p>

<p ng-if="comprehensive_colision_limitn==60000">Select the Deductible :
<select ng-model="comprehensive_colision_e_deductible" >
<option value="5000">$5000</option>
<option value="1000">$1000</option>
</select>
your selected deductible : {{comprehensive_colision_e_deductible}}
</p>



<h3> RENTAL REIMBURSEMENT COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="rental_limitn" >
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select>
</p>

<p ng-if="rental_limitn==100000">Select the Deductible :
<select ng-model="rental_a_deductible" >
<option value="45000">$45000</option>
<option value="40000">$40000</option>
</select>
your selected deductible : {{rental_a_deductible}}
</p>

<p ng-if="rental_limitn==90000">Select the Deductible :
<select ng-model="rental_b_deductible" >
<option value="35000">$35000</option>
<option value="30000">$30000</option>
</select>
your selected deductible : {{rental_b_deductible}}
</p>

<p ng-if="rental_limitn==80000">Select the Deductible :
<select ng-model="rental_c_deductible" >
<option value="25000">$25000</option>
<option value="20000">$20000</option>
</select>
your selected deductible : {{rental_c_deductible}}
</p>

<p ng-if="rental_limitn==70000">Select the Deductible :
<select ng-model="rental_d_deductible" >
<option value="15000">$15000</option>
<option value="10000">$10000</option>
</select>
your selected deductible : {{rental_d_deductible}}
</p>

<p ng-if="rental_limitn==60000">Select the Deductible :
<select ng-model="rental_e_deductible" >
<option value="5000">$5000</option>
<option value="1000">$1000</option>
</select>
your selected deductible : {{rental_e_deductible}}
</p>


<h3> UNINSURED AND UNDERINSURED MOTORIST COVERAGE </h3>
<h4>Available Coverage :</h4>

<p>Select the limit :
<select ng-model="unisured_underinsured_limitn" >
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select>
</p>

<p ng-if="unisured_underinsured_limitn==100000">Select the Deductible :
<select ng-model="unisured_underinsured_a_deductible" >
<option value="45000">$45000</option>
<option value="40000">$40000</option>
</select>
your selected deductible : {{unisured_underinsured_a_deductible}}
</p>

<p ng-if="unisured_underinsured_limitn==90000">Select the Deductible :
<select ng-model="unisured_underinsured_b_deductible" >
<option value="35000">$35000</option>
<option value="30000">$30000</option>
</select>
your selected deductible : {{unisured_underinsured_b_deductible}}
</p>

<p ng-if="unisured_underinsured_limitn==80000">Select the Deductible :
<select ng-model="unisured_underinsured_c_deductible" >
<option value="25000">$25000</option>
<option value="20000">$20000</option>
</select>
your selected deductible : {{unisured_underinsured_c_deductible}}
</p>

<p ng-if="unisured_underinsured_limitn==70000">Select the Deductible :
<select ng-model="unisured_underinsured_d_deductible" >
<option value="15000">$15000</option>
<option value="10000">$10000</option>
</select>
your selected deductible : {{unisured_underinsured_d_deductible}}
</p>

<p ng-if="unisured_underinsured_limitn==60000">Select the Deductible :
<select ng-model="unisured_underinsured_e_deductible" >
<option value="5000">$5000</option>
<option value="1000">$1000</option>
</select>
your selected deductible : {{unisured_underinsured_e_deductible}}
</p>


<h3> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION </h3>
<h4>Available Coverage :</h4>


<p>Select the limit :
<select ng-model="medical_PIP_limitn" >
<option value="100000">$100000</option>
<option value="90000">$90000</option>
<option value="80000">$80000</option>
<option value="70000">$70000</option>
<option value="60000">$60000</option>
</select>
</p>

<p ng-if="medical_PIP_limitn==100000">Select the Deductible :
<select ng-model="medical_PIP_a_deductible" >
<option value="45000">$45000</option>
<option value="40000">$40000</option>
</select>
your selected deductible : {{medical_PIP_a_deductible}}
</p>

<p ng-if="medical_PIP_limitn==90000">Select the Deductible :
<select ng-model="medical_PIP_b_deductible" >
<option value="35000">$35000</option>
<option value="30000">$30000</option>
</select>
your selected deductible : {{medical_PIP_b_deductible}}
</p>

<p ng-if="medical_PIP_limitn==80000">Select the Deductible :
<select ng-model="medical_PIP_c_deductible" >
<option value="25000">$25000</option>
<option value="20000">$20000</option>
</select>
your selected deductible : {{medical_PIP_c_deductible}}
</p>

<p ng-if="medical_PIP_limitn==70000">Select the Deductible :
<select ng-model="medical_PIP_d_deductible" >
<option value="15000">$15000</option>
<option value="10000">$10000</option>
</select>
your selected deductible : {{medical_PIP_d_deductible}}
</p>

<p ng-if="medical_PIP_limitn==60000">Select the Deductible :
<select ng-model="medical_PIP_e_deductible" >
<option value="5000">$5000</option>
<option value="1000">$1000</option>
</select>
your selected deductible : {{medical_PIP_e_deductible}}
</p>


</div>

<input type="button" ng-model="showdetails" ng-click="showplan()" value="Show My Plan Details">

<p >
Your Total Limit :{{total_limit}}<br>
Your Total Deductible : {{totald}}<br>
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