<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>    
     <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="ele" value="${fn:split('www.mycompany.org','.')}"/>
<c:forEach var="elem" items="${ele}">
${elem}<br>
</c:forEach><br>
elememts: ${fn:join(ele,'*')}
</body>
</html>