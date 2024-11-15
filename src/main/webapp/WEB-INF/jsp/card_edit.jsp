<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>编辑名片</title>
</head>
<body>
<h1>编辑名片</h1>
<form action="${pageContext.request.contextPath}/card/edit/${card.id}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${card.id}" />

    <label for="name">姓名:</label>
    <input type="text" name="name" id="name" value="${card.name}" required /><br>

    <label for="phone">电话:</label>
    <input type="text" name="phone" id="phone" value="${card.phone}" required /><br>

    <label for="email">邮箱:</label>
    <input type="email" name="email" id="email" value="${card.email}" required /><br>

    <label for="company">公司:</label>
    <input type="text" name="company" id="company" value="${card.company}" required /><br>

    <label for="position">职位:</label>
    <input type="text" name="position" id="position" value="${card.position}" required /><br>

    <label for="address">地址:</label>
    <input type="text" name="address" id="address" value="${card.address}" required /><br>

    <label for="logo">Logo:</label>
    <input type="file" name="logo" id="logo" /><br>

    <button type="submit">更新名片</button>
</form>

<a href="${pageContext.request.contextPath}/card/list">返回名片列表</a>
</body>
</html>
