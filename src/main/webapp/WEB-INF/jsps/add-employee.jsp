<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix ="form" uri = "http://www.springframework.org/tags/form"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
    <h2>Add employee !</h2>

    <form:form modelAttribute="employee" action="saveProcess">
        <input id="hiddenTxt" type="hidden" value="${employee.hobbies}" />
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
            <form:option value="France"/>France<br/>
        </form:select></br><br/>

        Employee Address : <form:textarea path="address"/><br/></br>

        <input type="submit" value="Save employee"/>
    </form:form>
    <br/><br/>

    <button onClick="window.location.href='getEmployees.html'">Cancel</button>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
            $(document).ready(function() {
                var hobbiesArray = $("#hiddenTxt").val().split(",");
                console.log(hobbiesArray);
                var $checkboxes = $("input[type=checkbox]");
                $checkboxes.each(function(index, element){
                    if (hobbiesArray.indexOf(element.value) != -1){
                        console.log("if : ", element);
                        element.setAttribute("checked", "checked");
                    }
                    else {
                    console.log("else", element);
                        element.removeAttribute("checked");
                    }
                });
            });
        </script>

</body>
</html>
