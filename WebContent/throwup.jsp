<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/blackStyle.css" rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#submitNewMessage").click(function() {
			$.ajax({
				url : "ThrowupServlet",
				type : "POST",
				data : {
					input : $("#input").val()
				},
				success : function(result) {
					$("#latestMsgDiv").html(result);
				}
			});
			$("#input").val('');
		});
	});
	function stopSubmit() {
		return false;
	}
</script>
<title>throw something up</title>
</head>
<body>
	<h3>BlackHole: messageboard</h3>
	: write something

	<div id="composeMsgDiv">
		<form id="throwupForm" action="/ThrowupServlet"
			onsubmit="return stopSubmit()">
			<table id="messageTable">
				<tr>
					<td><input type="text" id="input" name="input" /></td>
					<td><input type="button" id="submitNewMessage"
						name="submitNewMessage" value="post" class="button" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="latestMsgDiv"></div>

</body>
</html>