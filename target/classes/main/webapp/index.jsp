<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title></title>
</head>
<body>
<h2>Hello World!</h2>
<% String name =(String)session.getAttribute("arg");%>
<h1><%=name%></h1>
</body>
</html>