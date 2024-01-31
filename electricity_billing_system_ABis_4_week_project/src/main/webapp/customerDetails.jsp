<%@page import="java.util.List"%>
<%@page import="electricity_billing_system_ABis_4_week_projectAddCustomer.dto.Customerr"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
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
		margin-left: 80px;
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
	table{
		
		text-align:center;
		font-weight: bold;
		font-family: Arial;
		border:1px solid red;
		margin-top:30px;
		margin-bottom:30px;
	}
	td{
		 border: 1px solid #bdbbb9;
            padding: 10px;
            text-align: left;
	}
	th{
		  background-color: #faedd9;
		
	}
	tr:hover {
            background-color: #f5f5f5;
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
		width:90%;
		display:flex;
		align-items:center;
		justify-content:center;
		 border-style: ridge;
		  border-color: #6e7070;
		  border-width: 7px;
		  background-color:#f5fafa;
		  box-shadow: 0 0 20px #f7e4e5;
		  
		border-radius: 15px;
		
	}
	.d3:hover{
		
		  background-color:#e6f5f5;
		  
	}
	.bt3{
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
			<li><a href = "adminHome.html">Home</a></li>
			<li><a href = "addCustomer.html">Add Customer</a></li>
			<li><form action = "customerDetails" method = "post"><button class = "button">Customer Details</button></form></li>
			<li><form action = "deposit" method = "post"><button class = "bt3">Deposit Details</button></form></li>
			<li><a href = "calculateBill.jsp">Claculate Bill</a></li>
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
		<div class = "d3">
			<%
				List<Customerr> customers=(List)request.getAttribute("List");
			%>
		<table>
			<tr>
				<th>Customer Name</th>
				<th>Mitter Number</th>
				<th>Customer City</th>
				<th>Customer state</th>
				<th>Custommer Email</th>
				<th> phone</th>
				<th>MitterLoc</th>
				<th>MitterType</th>
				<th>PhaseCode</th>
				<th>Bill Type</th>
			</tr>
			<%
			
			for(Customerr customer:customers){
			%>
				<tr>
				<td><%=customer.getName() %></td>
				<td><%=customer.getMitterno() %></td>
				<td><%=customer.getCity() %></td>
				<td><%=customer.getState() %></td>
				<td><%=customer.getEmail() %></td>
				<td><%=customer.getPhone() %></td>
				<td><%=customer.getMitterloc() %></td>
				<td><%=customer.getMittertype() %></td>
				<td><%=customer.getPhasecode() %></td>
				<td><%=customer.getBilltype() %></td>
				
			</tr>
			<%} %>
		</table>
		</div>
	</div>
</body>
</html>