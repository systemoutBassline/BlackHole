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
<title>throw something up</title>
</head>
<body>
	<h3>BlackHole: messageboard</h3>
	: write something

	<div id="composeMsgDiv">
		<table id="messageTable">
			<tr>
				<td><input type="text" id="input" name="newMessage" /></td>
				<td><input type="button" id="submitNewMessage"
					name="submitNewMessage" value="post" class="button" /></td>
			</tr>
		</table>
	</div>
	<div id="latestMsgDiv">
		<span id="ajaxResponse"></span>
	</div>

</body>
</html>