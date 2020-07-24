<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List Page</title>
</head>
<body>
    <h2>Customer Relationship Manager</h2>

    <input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;"/>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <c:forEach var="tempCustomer" items="${customers}">

            <c:url var="updateLink" value="/customer/showFormForUpdate">
                <c:param name="customerId" value="${tempCustomer.id}" />
            </c:url>

            <c:url var="deleteLink" value="/customer/delete">
                <c:param name="customerId" value="${tempCustomer.id}" />
            </c:url>

            <tr>
                <td> ${tempCustomer.firstName} </td>
                <td> ${tempCustomer.lastName} </td>
                <td> ${tempCustomer.email} </td>

                <td>
                    <a href="${updateLink}">Update</a>
                    |
                    <a href="${deleteLink}"
                       onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
