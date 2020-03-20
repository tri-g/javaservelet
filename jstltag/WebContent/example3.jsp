<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${param.food=='choco'}">
eatting choco
</c:when>
<c:when test="${param.food=='icecream'}">
eatting icecream
</c:when>
<c:when test="${param.food=='biryani'}">
eatting biryani
</c:when>
<c:otherwise>
not hungry so not eatting
</c:otherwise>
</c:choose>
</body>
</html>