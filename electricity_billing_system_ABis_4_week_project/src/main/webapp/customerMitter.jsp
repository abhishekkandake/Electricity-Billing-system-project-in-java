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
		margin-left: 90px;
		text-decoration: none;
		font-size: 20px;
		font-weight: bold;
		font-family: Arial;
		text-decoration: none;
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
	.d3{
		width: 100%;
		height: 500px;
		border: none;
		display: flex;
	}
	.d4{
		width:150px;
		height: 500px;
		border: none;
		border-right: none;
		background: url("data:image/png;base64,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");
		
		background-size: contain;
		background-repeat: no-repeat;
		background-position: center;
		mix-blend-mode: multiply;
		shape-image-threshold:5.5%;
		
	}
	.d5{
		width:300px;
		border-left-width:10px;
		height: 570px;
		border:2px solid black;
		border-left:none;
		border-top: none;
		border-left: none;
		border-right: none;
		
	}
	.d5:hover{
		color:#f2b527;
		border-bottom: 6px solid royalblue;
		
	}
	h3{
		text-align: center;
		font-family: Arial;
		font-weight: bold;
		color: orange;
		text-transform: uppercase;
		text-decoration: underline whitesmoke 2px;
	}
	.i1{
		width:290px;
		height: 20px;
		border: 2px solid black;
		border-top: none;
		color: black;
		border-left: none;
		font-weight: bold;
		font-family: Arial;
		border-right: none;
		border-top-left-radius: 4px;
		border-top-right-radius: 4px;
		background-color: inherit;
	}
	.i1:hover{
		background-color:#a7eef2;	
		color:black;
		font-weight: bold;
		font-family: Arial;
	}
	button{
		width:147px;
		height:25px;
		font-weight: bold;
		font-family: Arial;
		margin-top:8px;
		background-color: #dbf73b;
		border-right: none;
		border-left: none;
		border-top: none;
		border-bottom: 2px solid red;
		border-top-left-radius: 5px;
		border-top-right-radius: 5px;
	}
	button:hover{
		background-color: #f2b079;
	}
	a{
		font-weight: bold;
		font-family: Arial;
		text-decoration: none;
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
			<li><a href = "adminHome.html">Home</a></li>
			<li><a href = "adminHome.html">Home</a></li>
			<li>Add Customer</li>
			<li><form action = "customerDetails" method = "post"><button class = "button">Customer Details</button></form></li>
			<li><a href = "DepositDetails.jsp">Deposit Details</a></li>
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
			<div class = "d4">
				
			</div>
			<div class = "d5">
				<h3>Mitter Information</h3>
				<%Integer mitterno = (Integer)request.getAttribute("List"); %>
				<form action="updateCustomer" method = "post">
						<label>Mitter Number :</label><br>
						<input class = "i1" type = "number" value = <%=mitterno %> name = "mitterno" ><br><br>
						<label>Mitter Location :</label><br>
						<input class = "i1" type = "text" name = "mitterloc" ><br><br>
						<label>Mitter Type</label><br>
						<input class = "i1" type = "text" name = "mittertype"><br><br>
						<label>Phase Code</label><br>
						<input class = "i1" type = "number" name = "phasecode"><br><br>
						<label>Bill Type</label><br>
						<input class = "i1" type = "text" name = "billtype"><br><br>
						<label>Days:</label>
						<p class = "i1" >30 days</p>
						<label>Note :</label>
						<p class = "i2">By Default Bill is Calculated</p>
						<button>Submit</a></button><button style = "margin-left:0px;border-left: none;"><a href = "addCustomer.html">Cancle</a></button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>