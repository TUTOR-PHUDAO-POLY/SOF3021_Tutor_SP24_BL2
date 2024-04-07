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
<form action="/xe-may/add" method="post">
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
    <button type="submit">Add</button>
</form>
<table border="1">
    <tr>
        <td>STT</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>Gia ban</td>
        <td>So luong</td>
        <td>Ma LXM</td>
        <td>Ten LXM</td>
        <td>Hanh dong</td>
    </tr>
    <tbody>
        <c:forEach items="${list}" var="xm" varStatus="stt">
            <tr>
                <td>${stt.index + 1}</td>
                <td>${xm.ma}</td>
                <td>${xm.ten}</td>
                <td>${xm.giaBan}</td>
                <td>${xm.soLuong}</td>
                <td>${xm.loaiXm.ma}</td>
                <td>${xm.loaiXm.ten}</td>
                <td>
                    <a href="/xe-may/detail/${xm.id}">Detail</a>
                    <a href="/xe-may/view-update/${xm.id}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>