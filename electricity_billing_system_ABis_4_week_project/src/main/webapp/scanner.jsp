<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	li{
		margin-left: 100px;
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
		display:flex;
		align-items:center;
		justify-content:center;
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
		margin-left:0px;
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
	.d3{
		border:none;
		width:24%;
		height:395px;
		border:none;
		
	}
	.d4{
		width:100%;
		height:350px;
		border:none;
		background-image:url("https://www.shiftingwale.com/resources/images/blog/92121_Bar_Code.jpeg");
		background-repeat:no-repeat;
		background-size:contain;
	}
	.d5{
		width:100%;
		height:50px;
		border:none;
		border-top:2px solid white;
		display:flex;
		align-items:center;
		justify-content:center;
		
	}
	.btt1{
		width:100px;
		height:25px;
		border:none;
		background-color:black;
		color:white;
		border-radius:5px;
		margin:0px;
		padding:0px;
	}
	input{
		background-color:inherit;
		height:0px;
		width:00px;
		margin:0px;
		padding:0px;
		border:none;
		
	}.but1{
		border:none;
		font-weight:bold;
		font-family:arial;
		font-size:20px;
	}
</style>
</head>
<body>
	<div class = "d1">
		<ul>
			<li><a href = "customerhome.html">Home</a></li>
			<li>
				<select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  value="hidden">Information</option>
					<option value="customerViewInformation.jsp">View Information</option>
					<option value="updateCustomer.jsp">Update Information</option>
				</select> 
			</li>
			<li>
				<select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  >User</option>
					<option value="ElectricityPayBill.jsp">Pay Bill</option>
					<option value="viewPaymentDetails.jsp">View Payment Details</option>
				</select> 
			</li>
			<li><form action = "viewPaymentDetails" method = "post"><button class="but1" >ViewMaymentDetails</button></form></li>
				<li>Report</li>
			<li class = "sc" style = "list-style-type:none;">
				<select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  value="hidden">Utility</option>
					<option value="https://www.google.com/">Google</option>
					<option value="adminLogin.html">Youtube</option>
					<option  value="https://in.search.yahoo.com/?fr2=inr">Yahoo</option>
					<option  value="https://onlinenotepad.org/notepad">NotePad</option>
				</select> 	
			</li>			
			<li class = "li" style = "margin-left:70.5px;"><form action = "logoutcustomer" method = "post"><button class = "btt1" style = "background-color:inherit;color:black;">Logout</button></form></li>
		</ul>
	</div>
	<div class = "d2">
		<div class = "d3">
			<div class = "d4" >
			
			</div>
			<div class = "d5">
				<%Integer mitterno = (Integer)request.getAttribute("List"); %>
				<%String month = (String)request.getAttribute("List2"); %>
				<form action = "sucess" method = "post">
					<input type = "number" name = "mitterno" value = <%=mitterno %> >
					<input type = "text" name = "status" value = "payed"><br><br>
					<input type = "text" name = "month" value = <%=month%>>
					<button class = "btt1">Submit</button>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>