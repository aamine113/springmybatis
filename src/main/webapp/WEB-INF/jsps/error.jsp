<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
<meta content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body>
    <h2 class="error">Error occured !</h2>
    <form:form modelAttribute="employee" action="saveProcess">
        Employee Fullname : <form:input path="fullname"/><br/><br/>
        Employee Email : <form:input path="email"/><br/><br/>
        Employee Gender : <form:radiobutton path="gender" value="Male"/>Male
        <form:radiobutton path="gender" value="Female"/>Female<br/><br/>
        Employee Hobbies : <br/><form:checkbox path="hobbies" value="Football"/>Football<br/>
        <form:checkbox path="hobbies" value="Polo"/>Polo<br/>
        <form:checkbox path="hobbies" value="Volley-Ball"/>Volley-Ball<br/>
        <form:checkbox path="hobbies" value="Rugby"/>Rugby<br/>
        Employee Country : <form:select path="country"><br/><br/>
            <form:option value="USA"/>USA<br/>
            <form:option value="Japan"/>Japan<br/>
            <form:option value="Brazil"/>Brazil<br/>
            <form:option value="Italia"/>Italia<br/>
            <form:option value="Russia"/>Russia<br/>
        </form:select></br><br/>
        Employee Address : <form:textarea path="address"/><br/></br>
        <input type="submit" value="Save employee"/>
    </form:form>

</body>
</html>
