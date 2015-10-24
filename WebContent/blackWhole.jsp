<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/blackStyle.css" rel="stylesheet" type="text/css" />
<title>BlackHole</title>
</head>
<body>
	<div id="whole">
		<!-- where everything is seen -->
		<div id="content">
			<iframe name="blackihole" src="index.jsp"></iframe>
		</div>
		<!-- menu, very temporary atm -->
		<div id="bottom">
			<table>
				<tr>
					<td><a href="index.jsp" target="blackihole">
							<button class="button">HOME</button>
					</a></td>
					<td><a href="chat.jsp" target="blackihole">
							<button class="button">CHAT</button>
					</a></td>
					<td><a href="throwup.jsp" target="blackihole">
							<button class="button">THROW UP</button>
					</a></td>
					<td><button class="button">STUFF 4</button></td>
					<td><button class="button">STUFF 5</button></td>
					<td><button class="button">STUFF 6</button></td>
					<td><button class="button">STUFF 7</button></td>
					<td><button class="button">STUFF 8</button></td>
					<td><button class="button">STUFF 9</button></td>
					<td><a href="testingArea.jsp" target="blackihole">
							<button class="button">TESTING AREA</button>
					</a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>