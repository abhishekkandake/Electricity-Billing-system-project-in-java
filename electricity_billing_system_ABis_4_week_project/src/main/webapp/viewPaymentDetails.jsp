<%@page import="electricity_billing_system_ABis_4_week_project_payment.dto.Pay"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Payment Details</title>
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
		
		text-decoration: none;
		font-size: 20px;
		color: black;
		font-weight: bold;
		font-family: Arial;
		list-style-type:none;
		margin-left:100px;

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
		width:60%;
		height:500px;
		border:2px solid black;
		 box-shadow: 0 0 20px #f7e4e5;
		background-color:#f5fafa;	
		border-radius: 15px;

		}
	.d3:hover{
		 border-style: ridge;
		  border-color: white;
		  border-width: 7px;
		  background-color:#faecd4;
	}
	table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            margin-top:100px;
        }

        th, td {
            border: 1px solid #bdbbb9;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #faedd9;
        }

        tr:hover {
            background-color: #f5f5f5;
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
	h1{
		text-align:center;
		font-weight:bold;
		font-family:arial;
	}
	.but1{
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
			<li class = "li" style = "margin-left:70.5px;"><form action = "logoutcustomer" method = "post"><button class = "btt1">Logout</button></form></li>
		</ul>
	</div>
	<div class = "d2">
		<div class = "d3">
			<h1>View Payment Details</h1>
			
			<%List<Pay> pays = (List)request.getAttribute("List"); %>
			<table>
					    <thead>
					        <tr>
					            <th>MitterNo</th>
					             <th>Name</th>
					            <th>Month</th>
					            <th>Units</th>
					            <th>Total</th>
					            <th>Status</th>
					        </tr>
					    </thead>
					    <tbody>
					       <%for(Pay pay:pays){%>
					       	 <tr>
					            <td><%=pay.getMitterno() %></td>
					            <td><%=pay.getName() %></td>
					            <td><%=pay.getMonth() %></td>
					            <td><%=pay.getUnits() %></td>
					            <td><%=pay.getTotal() %></td>
					            <td><%=pay.getStatus() %></td>
					        </tr>
					       <%} %>
					    </tbody>
					</table>
				
		</div>
	</div>
</body>
</html>