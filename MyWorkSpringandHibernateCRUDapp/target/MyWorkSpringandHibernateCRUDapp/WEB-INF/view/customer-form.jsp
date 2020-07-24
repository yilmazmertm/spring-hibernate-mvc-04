<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Adding Form Page</title>
</head>
<body>
<h2>Customer Relationship Manager</h2>
<form:form action="saveCustomer" modelAttribute="customer" method="post">
    <form:hidden path="id" />
    <table>
        <tbody>
        <tr>
            <td><label>First name:</label></td>
            <td><form:input path="firstName" /></td>
        </tr>

        <tr>
            <td><label>Last name:</label></td>
            <td><form:input path="lastName" /></td>
        </tr>

        <tr>
            <td><label>Email:</label></td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td><label></label></td>
            <td><input type="submit" value="Save"/></td>
        </tr>
        </tbody>
    </table>
</form:form>

<p>
    <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
</p>
</body>
</html>
