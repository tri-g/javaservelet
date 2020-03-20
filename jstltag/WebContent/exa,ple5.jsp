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
<%
String name[]=new String[3];
name[0]="tony";
name[1]="steve";
name[2]="bruce";
%>
<%-- <c:forEach items="<%=name %>" var="n">
${n} 
</c:forEach> --%>
<c:set var="narray" value="<%=name %>"/>
${fn:length(narray)}
</body>
</html>