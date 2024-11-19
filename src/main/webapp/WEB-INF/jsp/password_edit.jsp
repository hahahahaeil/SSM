<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>修改密码</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #f4f4f4;
    }
    .container {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 400px;
    }
    h1 {
      text-align: center;
      color: #333;
    }
    label {
      font-weight: bold;
      display: block;
      margin: 10px 0 5px;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 5px 0 15px;
      border-radius: 4px;
      border: 1px solid #ccc;
    }
    button {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 16px;
    }
    button:hover {
      background-color: #45a049;
    }
    .message {
      text-align: center;
      margin-top: 20px;
    }
  </style>
  <link rel="stylesheet" href="<c:url value='/css/style.css' />">

</head>
<body>
<div class="container">
  <h1>修改密码</h1>
  <form action="${pageContext.request.contextPath}/user/main/changePassword" method="post">
    <!-- 修改为输入用户名和新密码 -->
    <label for="username">用户名:</label>
    <input type="text" name="username" id="username" required />

    <label for="password">新密码:</label>
    <input type="password" name="password" id="password" required />

    <label for="confirmPassword">确认新密码:</label>
    <input type="password" name="confirmPassword" id="confirmPassword" required />

    <button type="submit">提交修改</button>
  </form>

  <div class="message">
    <p><a href="<c:url value='/user/main' />">返回功能页面</a></p>
  </div>
</div>
</body>
</html>
