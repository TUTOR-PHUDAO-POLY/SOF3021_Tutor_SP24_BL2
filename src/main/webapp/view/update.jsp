<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<form action="" method="post">
    <<label>Ma: <input type="text" name="ma"/></label>
    <label>Ten: <input type="text" name="ten"/></label>
    <label>Tuoi: <input type="text" name="tuoi"/></label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="flexRadioDefault1" value="true">
        <label class="form-check-label" for="flexRadioDefault1">
            Nam
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="gioiTinh" id="flexRadioDefault2" value="false">
        <label class="form-check-label" for="flexRadioDefault2">
            Nu
        </label>
    </div>
    <label>Dia chi: <input name="diaChi"></label>
    <button type="submit">Update</button>
</form>
</body>
</html>