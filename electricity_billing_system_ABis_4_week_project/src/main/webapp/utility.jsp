<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Utility</title>
<style>
	.d1{
		margin:0px;
		padding:0px;
	}
	ul{
		display: flex;
		margin:0px;
		padding:0px;
		background-color: #f2ebeb;
	}
	.li{
		margin-left: 90px;
		text-decoration: none;
		font-size: 20px;
		color: black;
		font-weight: bold;
		font-family: Arial;
		list-style-type:none;
	}
	.d2{
		width: 100%;
		height: 700px;
		background-image: url("https://i0.wp.com/asiatimes.com/wp-content/uploads/2020/01/Vue_ae%CC%81rienne_de_la_centrale_de_Civaux-scaled.jpeg?fit=1200%2C800&ssl=1");
		background-repeat: no-repeat;
		background-size: cover;
		margin-top: 3px;;
	}
	a{
		text-decoration: none;
		color: black;
		font-weight: bold;
		font-family: Arial;
	}
	.button{
		border:none;
		font-weight: bold;
		font-family: Arial;
		font-size: 20px;;
	}
	.se{
		width:80px;
		margin-left:85px;
		text-align:center;
		border:none;
		font-weight:bold;
		font-size:20px;
		font-family: arial;
		background-color:#f2ebeb;
		list-style-type:none;
		
	}
	.btt1{
		border:none;
		font-weight: bold;
		font-family: Arial;
		font-size: 20px;
	}
</style>
</head>
<body>
	<div class = "d1">
		<ul>
			<li class = "li"><a href = "adminHome.html">Home</a></li>
			<li class = "li"><a href = "addCustomer.html">Add Customer</a></li>
			<li class = "li"><form action = "customerDetails" method = "post"><button class = "button">Customer Details</button></form></li>
			<li class = "li"><a href = "DepositDetails.jsp">Deposit Details</a></li>
			<li class = "li"><a href = "calculateBill.jsp">Calculate Bill</a></li>
			<li class = "sc" style = "list-style-type:none;"><select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  value="">Utility</option>
					<option value="https://www.google.com/">Google</option>
					<option value="https://www.youtube.com/">Youtube</option>
					<option  value="https://in.search.yahoo.com/?fr2=inr">Yahoo</option>
					<option  value="https://www.whatsapp.com/">Whatsapp</option>
				</select> 	
			</li>
			<li class = "li" style = "margin-left:70.5px;"><form action = "logout" method = "post"><button class = "btt1">Logout</button></form></li>
		</ul>
	</div>
	<div class = "d2">
		
	</div>
</body>
</html>