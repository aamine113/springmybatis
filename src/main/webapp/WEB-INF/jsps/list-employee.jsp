<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1">
<title>Employee list page </title>
</head>
<body>
    <h2>Employee list !</h2></br>

    <button onClick="window.location.href='showFormForAddEmployee.html'">Add employee</button>
    </br></br>
    <div>
        <table border="1">
            <tr>
                <th>FullName</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Hobbies</th>
                <th>Country</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${listEmployees}" var="e">
                <c:url var="deleteLink" value="/deleteEmployee">
                    <c:param value="${e.id}" name="employeeId"/>
                </c:url>
                <c:url var="updateLink" value="/editEmployee">
                    <c:param value="${e.id}" name="employeeId"/>
                </c:url>
                <tr>
                    <td>${e.fullname}</td>
                    <td>${e.email}</td>
                    <td>${e.gender}</td>
                    <td>${e.hobbies}</td>
                    <td>${e.country}</td>
                    <td>${e.address}</td>
                    <td><a href="${updateLink}">Update</a> |
                    <a href="${deleteLink}" onClick="if(!confirm('Are you sure you want to delete this record ?')) return false;">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
