<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ru">
<head>
    <title>Meal</title>
</head>
<body>
<h3><a href="meal.html">Home</a></h3>
<hr>
<h2>Meal</h2>
<c:set var="meals" scope="request" value="${listMeals}"/>
<table border="1">
    <tr>
        <th><%="Date"%>
        </th>
        <th><%="Description"%>
        </th>
        <th><%="Calories"%>
        </th>
    </tr>
    <c:forEach var="oneMeal" items="${meals}">
        <c:set var="color" value="${oneMeal.excess ? 'red' : 'green'}"/>
        <tr>
            <td style="color: ${color};">${oneMeal.dateTime}</td>
            <td style="color: ${color};">${oneMeal.description}</td>
            <td style="color: ${color};">${oneMeal.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>