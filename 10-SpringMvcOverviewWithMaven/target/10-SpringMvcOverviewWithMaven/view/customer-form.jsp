<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <style>
        .error {color:red}
    </style>
    <title>Customer Registration Form</title>
</head>
<body>

<form:form  action="/customer/processForm" modelAttribute="customer">
    First Name : <form:input path="firstName" />
    <br><br>
    Last Name(Required) : <form:input path="lastName" />
    <form:errors path="lastName" cssClass="error" />
    <br><br>
    Valid Range(0-10) : <form:input path="validRange" />
    <form:errors path="validRange" cssClass="error" />

    <hr>
    <input type="submit" value="Submit">
</form:form>

</body>
</html>
