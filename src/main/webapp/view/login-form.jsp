<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--@elvariable id="loginRequest" type=""--%>
<form:form modelAttribute="loginRequest" action="/home" method="post">

    <div class="container">
        <label><b>Username</b></label>
        <form:input path="username" />
        <br/>
        <form:errors path="username" cssClass="error"/>
        <br/>
        <label><b>Password</b></label>
        <form:input path="password"/>
        <br/>
        <form:errors path="password" cssClass="error"/>
        <button type="submit">Login</button>
    </div>

</form:form>
</body>
</html>