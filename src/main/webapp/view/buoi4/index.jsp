<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Home</h1>
<button><a href="/may-tinh/view-add">Add</a></button>
<table border="1">
    <tr>
        <td>Ma may tinh</td>
        <td>Ten</td>
        <td>Gia</td>
        <td>Bo nho</td>
        <td>Mau sac</td>
        <td>Ma hang</td>
        <td>Mo ta</td>
        <td>Hanh dong</td>
    </tr>
    <tbody>
        <c:forEach items="${lists}" var="mt">
            <tr>
                <td>${mt.ma}</td>
                <td>${mt.tenMayTinh}</td>
                <td>${mt.gia}</td>
                <td>${mt.boNho}</td>
                <td>${mt.mauSac}</td>
                <td>${mt.hang.ma}</td>
                <td>${mt.mieuTa}</td>
                <td>
                    <button><a href="/may-tinh/delete/${mt.id}">Xoa</a></button>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>