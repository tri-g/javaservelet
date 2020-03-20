<%@ page import="java.util.Date, org.filea"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%@ include file="f1.txt" %>
<jsp:include page="f2.txt"/> --%>

<%= new Date() %>
<% out.print(new java.util.Date()); %>
<br>
<%out.print(new filea().demo());%>
</body>
</html>