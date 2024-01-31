<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Calculator</title>
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
	a{
		text-decoration:none;
		color:black;
	}
	.d2{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url("https://i0.wp.com/asiatimes.com/wp-content/uploads/2020/01/Vue_ae%CC%81rienne_de_la_centrale_de_Civaux-scaled.jpeg?fit=1200%2C800&ssl=1");
            width: 100%;
			height: 700px;
			background-image: url("https://i0.wp.com/asiatimes.com/wp-content/uploads/2020/01/Vue_ae%CC%81rienne_de_la_centrale_de_Civaux-scaled.jpeg?fit=1200%2C800&ssl=1");
			background-repeat: no-repeat;
			background-size: cover;
			margin-top: 3px;;
        }

        #calculator {
            border: 0px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px #f7d27c;
        }

        input {
            width: 90%;
            margin-bottom: 10px;
            padding: 10px;
            font-size: 18px;
        }

        .button {
            width: 48px;
            height: 48px;
            margin: 5px;
            font-size: 18px;
            cursor: pointer;
        }
		input:hover{
			background-color:#f0fbfc;
		}
       
        .button:hover{
        	background-color:#f77823;
        	box-shadow: 0 0 10px #f2444f;
        	border:none;
        }
        .c:hover{
        	background-color:#cacccc;
        }
        .c1:hover{
        	background-color:#e084a5;
        }
        .sc{
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
			<li><form action = "customerDetails" method = "post"><button style = "border:none;font-weight: bold;font-family: Arial;font-size: 20px;">Customer Details</button></form></li>
			<li><form action = "deposit" method = "post"><button class = "bt3">Deposit Details</button></form></li>
			<li><a href = "calculateBill.jsp">Calculate Bill</a></li>
			<li  style = "list-style-type:none;"><select name = "links" class = "sc" size = "1" onchange = "window.location.href=this.value;">
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
			<div id="calculator">
			    <input type="text" id="display" readonly>
			    <br>
			    <button onclick="appendToDisplay('1')" class = "button">1</button>
			    <button onclick="appendToDisplay('2')" class = "button">2</button>
			    <button onclick="appendToDisplay('3')" class = "button">3</button>
			    <button onclick="appendToDisplay('+')" class = "button">+</button>
			    <br>
			    <button onclick="appendToDisplay('4')" class = "button">4</button>
			    <button onclick="appendToDisplay('5')" class = "button">5</button>
			    <button onclick="appendToDisplay('6')" class = "button">6</button>
			    <button onclick="appendToDisplay('-')" class = "button">-</button>
			    <br>
			    <button onclick="appendToDisplay('7')" class = "button">7</button>
			    <button onclick="appendToDisplay('8')" class = "button">8</button>
			    <button onclick="appendToDisplay('9')" class = "button">9</button>
			    <button onclick="appendToDisplay('*')"  class = "button">*</button>
			    <br>
			    <button onclick="appendToDisplay('0')" class = "button">0</button>
			    <button onclick="clearDisplay()" class = "button">C</button>
			    <button onclick="calculate()" class = "button">=</button>
			    <button onclick="appendToDisplay('/')" class = "button">/</button>
			</div>
			<script>
				    function appendToDisplay(value) {
				        document.getElementById('display').value += value;
				    }
				
				    function clearDisplay() {
				        document.getElementById('display').value = '';
				    }
				
				    function calculate() {
				        try {
				            document.getElementById('display').value = eval(document.getElementById('display').value);
				        } catch (error) {
				            document.getElementById('display').value = 'Error';
				        }
				    }
			</script>
		</div>
</body>
</html>