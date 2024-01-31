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
		width:70%;
		height:500px;
		display:flex;
		align-items:center;
		justify-content:center;
		border-style: ridge;
		 border-color: #cfcdc8;
		 border-width: 7px;
		 background-color:#f5fafa;
	 	box-shadow: 0 0 20px #f7e4e5;
		border-radius: 15px;	
	}
	.d4{
		width:60%;
		height:500px;
		border:none;
		border-right:none;
		background-color:white;
		border-top-left-radius:15px;
		border-bottom-left-radius:15px;
	}
	.d5{
		width:40%;
		height:500px;
		border:2px solid black;
	
		display:flex;
		align-items:center;
		justify-content:center;
		border-left:none;
		border:none;
		border-radius:15px;
		background-color:white;
	}
	.d6{
		border:none;
		width:100%;
		height:196px;
			background-image:url("data:image/png;base64,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");
		background-repeat:no-repeat;
		background-size:contain;
		mix-blend-mode: multiply;
		border-radius:15px;
	}
	.d7{
		width:30px;
		height:30px;
		border:none;
		margin-top:5px;
		margin-left:5px;
		border-radius:5px;
		background-image:url("data:image/png;base64,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");
		background-repeat:no-repeat;
		background-size:cover;
		mix-blend-mode: multiply;
	}
	.d8{
		height:30px;
		width:100%;
		border:none;
		font-weight:bold;
		font-family:arial;
		display:flex;
		align-items:center;
		justify-content:center;
	}
	.d9{
		height:424px;
		width:100%;
		border:none;
		margin-top:3px;
		display:flex;
		align-items:center;
		justify-content:center;
	}
	.d10{
		border:2px solid black;
		width:45%;
		height:350px;
		border:none;
	}
	input{
		width:262px;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom:2px solid black;
		text-align:center;
		font-weight:bold;
		font-family:arial;
		text-transform:uppercase;
	}
	.ii1{
		margin-top:10px;
	}
	.btt1{
		margin-top:25px;
		width:130px;
		margin-left:2px;
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
					<option value="updateCustomer.jsp">View Payment Details</option>
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
				<li class = "li" style = "margin-left:70.5px;"><form action = "logoutcustomer" method = "post"><button class = "btt1" style = "margin-top:0px;">Logout</button></form></li>
			</ul>
		</div>
		<div class = "d2">
			<div class = "d3">
				<div class = "d4">
					<div class = "d7">
					
					</div>
					<div class = "d8">
						Electricity Bill
					</div>
					<div class = "d9">
						<%String name = (String)request.getAttribute("List"); %>
						<%Integer total = (Integer)request.getAttribute("List2"); %>
						<%Integer mitterno = (Integer)request.getAttribute("List3"); %>
						<%String month = (String)request.getAttribute("List4"); %>
						<%Integer units = (Integer)request.getAttribute("List5"); %>
						<%String status = (String)request.getAttribute("List6"); %>
						<div class = "d10">
							<form action = "paybill" method = "post">
							<label>Mitterno:</label><br>
							<input  type = "number" value = <%=mitterno %> name = "mitterno" ><br>
							<label >Name :</label><br>
							<input class = "ii1" type = "text" value = <%=name%> name = "name" ><br>
							<label>Month :</label><br>
							<input class = "ii1" type = "text" value = <%=month %> name = "month" ><br>
							<label>Units:</label><br>
							<input class = "ii1" type = "number" value = <%=units %> name = "units" ><br>
							<label>Total Bill :</label><br>
							<input class = "ii1" type = "number" value = <%=total %> name = "total" ><br>
							<label>Status</label><br>
							<input class = "ii1" type = "text" value = <%=status %> name = "status" ><br>
							<button class = "btt1">Pay</button><button  class = "btt1"><a href = "ElectricityPayBill.jsp">Back</a></button>
						</form>
						</div>
					</div>
				</div>
				<div class = "d5">
					<div class = "d6">
					
					</div>
				</div>
			</div>
		</div>
</body>

</html>