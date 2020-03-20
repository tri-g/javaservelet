<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/controllerinfo" method="get">
Name: <input type="txt" name="name" required/><br>
Gender: <input type="radio" name="gender" value="male" checked="checked" >Male
<input type="radio" name="gender" value="female">Female
<input type="radio" name="other" value="other">Other<br>
Languages: <input type="checkbox" name="language" value="English">English
<input type="checkbox" name="language" value="Tamil">Tamil
<input type="checkbox" name="language" value="Kannada">Kannada
<input type="checkbox" name="language" value="Telugu">Telugu
<input type="checkbox" name="language" value="Korean">Korean
<input type="checkbox" name="language" value="Hindi">Hindi<br>
Country: <select name="country">
<option selected>Australia</option>
<option>South Korea</option>
<option>UK</option>
<option>Canada</option>
</select><br>
<input type="submit" value="submit">
</form>
</body>
</html>