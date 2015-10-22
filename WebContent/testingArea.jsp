<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/blackStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/blackScripts.js"></script>
<title>TESTING AREA</title>
</head>
<body>
	<h3>BlackHole: testing area</h3>
	<p>TESTING: AJAX</p>
	<!-- first test, normal JS -->
	<form name="form" id="form" onsubmit="return stopSubmit()">
		<input type="text" id="input" /> <input type="button" value="DEXTER"
			id="btn1" onclick='ajaxAsyncRequest("TestingHole")' /> <br /> <span
			id="msg1"></span> <br /> <span id="msg2"></span>
	</form>
</body>
</html>