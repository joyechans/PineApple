<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>추석이벤트</title>
	</head>
	
		<img src="/pineapple/resources/images/pop.png">
	<body onunload="closeWin()">

	</body>
	
	<script type="text/javascript">
	function setCookie( name, value, expiredays )
	{
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	}
	 
	function closeWin()
	{
	if ( document.forms[0].Notice.checked )
	setCookie( "Notice", "done" , 1);
	self.close();
	}
</script>
</html>		
		

