<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: mark
  Date: 29.04.2022
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add employee</title>
</head>
<body>
<h2>Fill in the details</h2>
<br>
<form:form action="show" modelAttribute="employee">
    Name <form:input path="name"/> <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/> <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/> <form:errors path="salary"/>
    <br><br>
    Department
    <form:select path="department">
        <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Employment
    <form:radiobuttons path="employment" items="${employee.employments}"/>
    <br><br>
    Language(s)
    <form:checkboxes path="languages" items="${employee.langMap}"/>
    <br><br>
    <input type="submit" value="OK">
</form:form>
</body>
</html>
