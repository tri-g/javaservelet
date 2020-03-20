<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="?locale=en_AU">English(AUS)</a>
<a href="?locale=fr">French</a>
<a href="?locale=ko_KR">Korean</a>
<a href="?locale=ms">Malay</a>
<br>
<hr>
<fmt:setLocale value="${param.locale}"/>
<fmt:bundle basename="i18n/website">
<p><fmt:message key="label.hello"/>tri,
<p><fmt:message key="label.name"/>
<p><fmt:message key="label.message"/>
<p><fmt:message key="label.greeting"/>
</fmt:bundle>
<br><br>
locale:${param.locale}

</body>
</html>