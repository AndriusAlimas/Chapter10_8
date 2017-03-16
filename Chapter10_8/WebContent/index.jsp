<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="formTag" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
</head>
<body>

	<jsp:useBean id="colorList" scope="application" type="java.util.List" class="java.util.ArrayList">
		<% colorList.add("light"); 
		colorList.add("amber"); 
		colorList.add("brown"); 
		colorList.add("dark"); 
		%>
	</jsp:useBean>
	
	<form action="result.jsp" method="GET">
		<p>Select beer characteristic</p>
		Color:
		<%-- Mimic HTML select tag with custom created tag: --%>
		<%-- this time we using TAG FILES!! its more easier and better way to declare this way
		all dynamic attributes is set in myTag.tag file in simple way, AND YET YOU DONT NEED TO HAVE
		TagHandler class !!  --%>
		<formTag:myTag name="color" optionsList="${colorList}" size="2" multiple="true"/>
		<br><br><br><input type="submit">	
	</form>
	
</body>
</html>