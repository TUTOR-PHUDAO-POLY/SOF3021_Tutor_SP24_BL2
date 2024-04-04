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
<form action="/san-pham/add" method="post">
    <label>Ma:</label><br>
    <input type="text" name="ma" value="${sanpham.ma}"><br>
    <label>Ten:</label><br>
    <input type="text" name="ten" value="${sanpham.ten}"><br>
    <label>Gia:</label><br>
    <input type="number" name="giaBan" value="${sanpham.giaBan}"><br>
    <label>So luong:</label><br>
    <input type="number" name="soLuong" value="${sanpham.soLuong}"><br>
    <select name="loaiSp">
        <c:forEach items="${listLoaiSanPham}" var="lsp">
            <option value="${lsp.id}">${lsp.ma}</option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">Add</button>
</form>
<form action="/san-pham/${sp.id}" method="post">
    <label>Ma:</label><br>
    <input type="text" name="ma" value="${sp.ma}"><br>
    <label>Ten:</label><br>
    <input type="text" name="ten" value="${sp.ten}"><br>
    <label>Gia:</label><br>
    <input type="number" name="giaBan" value="${sp.giaBan}"><br>
    <label>So luong:</label><br>
    <input type="number" name="soLuong" value="${sp.soLuong}"><br>
    <br>
    <button type="submit">Update</button>
</form>
<table border="1">
    <tr>
        <td>STT</td>
        <td>Ma</td>
        <td>Ten</td>
        <td>Gia ban</td>
        <td>So luong</td>
        <td>Ma LoaiSP</td>
        <td>Ten LoaiSP</td>
        <td>Hanh dong</td>
    </tr>
    <tbody>
        <c:forEach items="${list}" var="sp" varStatus="stt">
            <tr>
                <td>${stt.index + 1}</td>
                <td>${sp.ma}</td>
                <td>${sp.ten}</td>
                <td>${sp.giaBan}</td>
                <td>${sp.soLuong}</td>
                <td>${sp.loaiSp.ma}</td>
                <td>${sp.loaiSp.ten}</td>
                <td>
                    <a href="/san-pham/remove/${sp.id}">Remove</a>
                    <a href="/san-pham/detail/${sp.id}">Detail</a>
                    <a href="/san-pham/update/${sp.id}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>