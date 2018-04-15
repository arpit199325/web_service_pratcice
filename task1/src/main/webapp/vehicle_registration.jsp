<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>


<form action=" " method="post" enctype="application/json">

<h1>  Vehicle Details : </h1>


<div>


<p> Vehicle made Year :
<input type="text" name="yearj"> 

</p></n>



<p> Vehicle VIN Number :
<input type="text" name="vinj">

</p></n>


<p> Make : 
<input type="text" name="makej">
</p></n>


<p> Model :
<input type="text" name="modelj"> 

</p> Body Style :
<input type="text" name="bodystylej">
</n>


<p> Anti Theft Device :

<select name="theftdevicej">
<option></option>
<option value="yes"> YES </option>
<option value="no"> NO </option>
</select>
</p></n>


<p> Owning Details :

<input type="radio" value="owned" > OWNED
<input type="radio" value="financed"> FINANCED
<input type="radio" value="leased"> LEASED

</p></n>


<p>Vehicle Use :
<select>
<option></option>
<option value="day"> Day </option>
<option value="week"> Week </option>
<option value="year"> Year </option>
</select>

Enter The Average Mileage Details :<input type="text" name="milesj">

</p></n>


<p>
Do You Have More Vehicles :
<select>
<option></option>
<option value="yes"> YES </option>
<option value="no"> NO </option>
</select>

</p></n>


<p>
<input type="submit" value="Submit" >
<input type="button" value="Cancel">

</p></n>


</div>

</form>

</body>


</html>