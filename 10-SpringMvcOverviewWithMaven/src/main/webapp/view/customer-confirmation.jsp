<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Confirmation Page</title>
</head>
<body>

<h3>The Customer is confirmed ${customer.firstName} ${customer.lastName}</h3>
<br>
<h3>Valid Range :  ${customer.validRange}</h3>
<br>
<h3>Postal Code : ${customer.postalCode}</h3>

</body>
</html>
