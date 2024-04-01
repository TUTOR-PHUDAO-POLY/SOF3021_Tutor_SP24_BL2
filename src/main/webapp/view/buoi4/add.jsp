<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="/may-tinh/add" method="post">
    <label>Ma:</label><br>
    <input type="text" name="ma"><br>
    <label>Ten:</label><br>
    <input type="text" name="tenMayTinh"><br>
    <label>Gia:</label><br>
    <input type="number" name="gia"><br>
    <label>Bo nho:</label><br>
    <select name="boNho">
        <option value="64GB">64GB</option>
        <option value="128GB">128GB</option>
    </select>
    <label>Mau sac:</label><br>
    <input type="radio" value="Den" name="mauSac" checked/> Den
    <input type="radio" value="Bac" name="mauSac"/> Bac
    <br>
    <select name="hang">
        <c:forEach items="${lists}" var="h">
            <option value="${h.id}">${h.tenHang}</option>
        </c:forEach>
    </select>
    <button type="submit">Add</button>
</form>