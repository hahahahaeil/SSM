<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>添加名片</title>
  <!-- 引用 CSS 文件 -->
  <link rel="stylesheet" href="<c:url value='/css/style.css' />">

<%--  <style>--%>
<%--    body {--%>
<%--      background-image: url("<c:url value='/images/Background.jpg' />");--%>
<%--      background-size: cover;--%>
<%--      background-position: center;--%>
<%--      background-repeat: no-repeat;--%>
<%--      display: flex;--%>
<%--      justify-content: center;--%>
<%--      align-items: center;--%>
<%--      height: 100vh;--%>
<%--      margin: 0;--%>
<%--      font-family: Arial, sans-serif;--%>
<%--    }--%>
<%--  </style>--%>
</head>
<body>
<h1>添加新名片</h1>
<form action="<c:url value='/card/add' />" method="post">
  <label for="name">姓名:</label>
  <input type="text" name="name" id="name" required /><br>

  <label for="phone">电话:</label>
  <input type="text" name="phone" id="phone" required /><br>

  <label for="email">邮箱:</label>
  <input type="email" name="email" id="email" required /><br>

  <label for="company">公司:</label>
  <input type="text" name="company" id="company" required /><br>

  <label for="position">职位:</label>
  <input type="text" name="position" id="position" required /><br>

  <label for="address">地址:</label>
  <input type="text" name="address" id="address" required /><br>


  <button type="submit">添加名片</button>
</form>

<a href="${pageContext.request.contextPath}/card/list">返回名片列表</a>
</body>
</html>
