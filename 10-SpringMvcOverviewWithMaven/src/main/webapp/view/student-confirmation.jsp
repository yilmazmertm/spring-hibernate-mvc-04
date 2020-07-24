<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation Form</title>
</head>
<body>
<h2> The Student is confirmed : ${student.firstName} ${student.lastName} is from ${student.country}</h2>
<br>
<h3>His/Her favorite Language is : ${student.favoriteLanguage} </h3>
<hr>
Operating Systems :
<ul>
    <c:forEach var="temp" items = "${student.operatingSystems}">
        <li> ${temp} </li>
    </c:forEach>
</ul>

</body>
</html>
