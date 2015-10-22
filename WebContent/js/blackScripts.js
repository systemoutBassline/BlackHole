var lastMsg;

function stopSubmit() {
	ajaxAsyncRequest("TestingHole");
	return false;
}
// ajax test1, dexter..
function ajaxAsyncRequest(reqURL) {
	var xmlhttp = getXMLObject();
	
	xmlhttp.open("GET", reqURL + "?input="
			+ document.getElementById("input").value, true);
	
	document.getElementById("input").value = '';
	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) {
			if (xmlhttp.status == 200) {
				document.getElementById("msg1").innerHTML = xmlhttp.responseText;
			} else {
				alert('Something is wrong!');
			}
		}
	};
	xmlhttp.send(null);
}

function getXMLObject() {
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;
}