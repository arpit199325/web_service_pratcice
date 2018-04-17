<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app='coverageapp'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Coverage Details </title>
<script type="text/javascript" src="angular.js"></script>

</head>

<body>

<script type="text/javascript">

var coverageapp=angular.module("coverageapp",[]);

coverageapp.controller("coveragecntrl",coveragefunction);

function coveragefunction($scope,$http)
{
	
	
$scope.premium_time=["weekly","monthly","annual"];

var r=function()
{
	ng-if($scope.liabitycovergaen=true)
{
		
		$scope.deductible=364;
		$scope.limit=548;
		$scope.premium=32746;
}
	
	ng-if($scope.comprehensive_colision_coberagen=true)
	{
		$scope.d
		
	}
		ng-if($scope.rental_coveragen=true )
			{
			}
		
		
			ng-if($scope.unisured_unserinsured_coveragen)
			{
			}
				ng-if()
				{
					
					
				}
				
}		
}


</script>


<form action="" ng-controller="coveragecntrl" enctype="application/json">

<h1> Types Of Available Coverage Are given As Below </h1>

<h2> Please select Coverage from the below list : </h2>


<p>
CAR INSURANCE COVERAGE OPTIONS AT A GLANCE
</p>

<div>
<table cellpadding="5px" cellspacing="4px" border="2px">

<tr>
<th> Type of Car Insurance Coverage </th>
<th >Required or Optional</th>
</tr>

<tr>

<td>Liability Coverage
<ol start="1">
<li>
Bodily injury liability
</li>
<li>
Property damage liability
</li>
</ol>
</td>

<td>Required</td>

</tr>

<tr>
<td>Comprehensive Coverage</td>
<td>Optional (unless you lease or finance your vehicle)</td>
</tr>

<tr>
<td>Collision Coverage</td>
<td>Optional (unless you lease or finance your vehicle)</td>
</tr>

<tr>
<td>Medical Payments Coverage/Personal Injury Protection (PIP)</td>
<td>Required in some states</td>
</tr>

<tr>
<td>Uninsured Motorist Coverage</td>
<td>Required in some states</td>
</tr>

<tr>
<td>Underinsured Motorist Coverage</td>
<td>Required in some states</td>
</tr>

<tr>
<td>Rental Reimbursement Coverage</td>
<td>Optional</td>
</tr>

</table>
</div>


<div>

<p>
<h2> LIABILITY COVERAGE <input type="checkbox" value="liabity_coverage" name="liabitycovergaej" ng-model="liabitycovergaen" ></h2>

<h3 style="color: red;"> This Coverage is automatically included in your Premium </h3>

Liability coverage is typically included in all auto insurance policies, as it's required by law in most states. Bodily injury liability coverage helps pay for another person's medical expenses if you cause an accident. Property damage liability coverage helps pay for damage you cause to another person's property in a car accident.

Each state sets minimum liability coverage limits that drivers must purchase. Typically, the liability coverage in an auto insurance policy will contain three limits:
<p>
The maximum payment for bodily injury per person  <br>
The maximum payable for bodily injury per accident <br>
The maximum payable for property damage <br>
</p>
You may want to go beyond the state requirements and buy a policy with higher liability limits. Higher coverage limits typically mean you'll pay higher premiums, but you'll have more protection if you cause an accident.

</p>


<p>
<h2> COMPREHENSIVE AND COLLISION COVERAGE <input type="checkbox" name="liabitycovergaej" value="comprehensive_colision_coberage" ng-model="comprehensive_colision_coberagen"></h2>

If you are still paying off an auto loan or if you have a lease on your vehicle, your lienholder or financing company usually requires collision coverage and comprehensive coverage. Otherwise, if your vehicle is paid off, these two coverages are typically optional on a car insurance policy.

Collision coverage helps pay to repair or replace your vehicle if it's damaged in a collision with another vehicle or object (such as a fence). Remember, collision coverage helps protect your vehicle, while property damage liability helps pay for damage you cause to another driver's vehicle.

Comprehensive coverage helps pay to repair or replace your vehicle if it's stolen or damaged by things like hail, animal damage or vandalism.

Comprehensive and collision coverage each have deductibles and limits. A deductible is the amount you pay out of pocket toward a covered claim. A limit is the maximum amount your insurance will pay out for a covered claim.
</p>

<p>
<h2> RENTAL REIMBURSEMENT COVERAGE <input type="checkbox" name="liabitycovergaej" value="rental_coverage"  ng-model="rental_coveragen"></h2>

Rental reimbursement coverage helps pay for a rental car while yours is being repaired after a covered loss. Be sure to check the coverage limits — typically, rental reimbursement pays up to a certain dollar amount per day, for a set number of days.
</p>

<p>
<h2> UNINSURED AND UNDERINSURED MOTORIST COVERAGE <input type="checkbox" name="liabitycovergaej" value="unisured_unserinsured_coverage" ng-model="unisured_unserinsured_coveragen"></h2>

Uninsured motorist coverage helps protect you against drivers without insurance. If you're injured in an accident caused by another driver, that driver's liability insurance will usually help cover medical expenses you incur — unless that driver doesn't have auto liability coverage. In that case, your uninsured motorist coverage would help pay for expenses related to your injuries.

Underinsured motorist coverage works similarly: It takes effect if the other driver who caused the accident has insurance, but their liability coverage limits are lower than the limits that trigger underinsured motorists coverage in your state. Check your state’s insurance requirements or ask your agent for more information about this coverage.
</p>

<p>
<h2> MEDICAL PAYMENTS COVERAGE/PERSONAL INJURY PROTECTION <input type="checkbox" name="liabitycovergaej" value="medical_PIP_coverage" ng-model="medical_PIP_coveragen"></h2>
Medical payments coverage helps pay for your (or your passengers') medical expenses after an accident, regardless of who is at fault. Covered expenses may include things like surgery or X-rays.

Personal injury protection (PIP) isn't available in all states, but it's required in some states. PIP works similarly to medical payments coverage — it helps cover your medical expenses resulting from a covered loss. In some cases, it may also help you pay for other expenses while you're healing. These expenses may include child care services and lost income as a result of your injuries.
</p>


</div>



<div>
<h2> Based on your selection of plans your Insurance Details are given as below :  </h2>
<table>

<tr>
<th> Your Deductible Amount </th>
<td></td>
</tr>

<tr>
<th> Your premium Amount </th>
<td></td>
</tr>

<tr>
<th> Your Limit </th>
<td></td>
</tr>

</table>

Your Deductible  : <input type="text" name="deductiblej" ng-model="deductiblen" ><br>
Your Premium :<select name="premiumj" ng-model="premiumn" ng-options="premimum for premimum in premium_time"></select>/*get the premium details based on the time period*/<br>
Your Limit :<input type="text" name="limitj" ng-model="limitn">

</div>



</form>

</body>
</html>