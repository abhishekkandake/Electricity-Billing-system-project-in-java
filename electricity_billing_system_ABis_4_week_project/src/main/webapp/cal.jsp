<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        #calculator {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            font-size: 18px;
        }

        button {
            width: 48px;
            height: 48px;
            margin: 5px;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
	<div id="calculator">
	    <input type="text" id="display" readonly>
	    <br>
	    <button onclick="appendToDisplay('1')">1</button>
	    <button onclick="appendToDisplay('2')">2</button>
	    <button onclick="appendToDisplay('3')">3</button>
	    <button onclick="appendToDisplay('+')">+</button>
	    <br>
	    <button onclick="appendToDisplay('4')">4</button>
	    <button onclick="appendToDisplay('5')">5</button>
	    <button onclick="appendToDisplay('6')">6</button>
	    <button onclick="appendToDisplay('-')">-</button>
	    <br>
	    <button onclick="appendToDisplay('7')">7</button>
	    <button onclick="appendToDisplay('8')">8</button>
	    <button onclick="appendToDisplay('9')">9</button>
	    <button onclick="appendToDisplay('*')">*</button>
	    <br>
	    <button onclick="appendToDisplay('0')">0</button>
	    <button onclick="clearDisplay()">C</button>
	    <button onclick="calculate()">=</button>
	    <button onclick="appendToDisplay('/')">/</button>
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
	
</body>
</html>