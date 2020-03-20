<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import var="doc1" url="/file1.xml"/>
<x:parse var="doc2" xml="${doc1}"/>
<%-- Name:<x:out select="$doc2/users/user[3]/name"/><br>
Gender:<x:out select="$doc2/users/user[3]/gender"/><br>
Age:<x:out select="$doc2/users/user[3]/age"/><br>
<x:out select="$doc2/users/user[3]"/> --%>
<table border="">
<x:forEach select="$doc2/users/user">
<tr>
<%-- <x:if select="age>30">
<td><x:out select="name"/></td><br>
<td><x:out select="gender"/></td><br>
<td><x:out select="age"/></td><br>
</x:if> --%>

</tr>
</x:forEach>
</table>
</body>
</html>