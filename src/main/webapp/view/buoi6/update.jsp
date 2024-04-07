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
<form action="/xe-may/update/${xemay.id}" method="post">
    <label>Ma:</label><br>
    <input type="text" name="ma" value="${xemay.ma}"><br>
    <label>Ten:</label><br>
    <input type="text" name="ten" value="${xemay.ten}"><br>
    <label>Gia:</label><br>
    <input type="number" name="giaBan" value="${xemay.giaBan}"><br>
    <label>So luong:</label><br>
    <input type="number" name="soLuong" value="${xemay.soLuong}"><br>
    <select name="loaiXm">
        <c:forEach items="${listLoai}" var="lxm">
            <option value="${lxm.id}" ${xemay.loaiXm.id == lxm.id ? 'selected' : ''}>${lxm.ten}</option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">Update</button>
</form>
</body>
</html>