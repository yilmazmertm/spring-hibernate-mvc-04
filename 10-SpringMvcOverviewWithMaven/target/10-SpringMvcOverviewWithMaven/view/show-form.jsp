<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Form Page</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/processFormThree" method="get">
    <input type="text" name="studentName" placeholder="What's your name ?" />
    <input type="submit" />
</form>

</body>
</html>
