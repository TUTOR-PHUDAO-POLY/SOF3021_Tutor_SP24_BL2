<!doctype html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<button><a href="">Add</a></button>
<table>
    <tr>
        <td>ID</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>Tuoi</td>
        <td>GioiTinh</td>
        <td>DiaChi</td>
        <td>Action</td>
    </tr>
    <tbody>
    <c:forEach items="${list}" var="gv">
        <tr>
            <td>${gv.id}</td>
            <td>${gv.ma}</td>
            <td>${gv.ten}</td>
            <td>${gv.tuoi}</td>
            <td>${gv.gioiTinh}</td>
            <td>${gv.diaChi}</td>
            <td>
                <button><a href="">Detail</a></button>
                <button><a href="/giang-vien/remove/${gv.id}">Delete</a></button>
                <button><a href="">Update</a></button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>