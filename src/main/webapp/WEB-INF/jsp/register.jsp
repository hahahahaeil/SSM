<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>注册页面</title>
    <style>
        /* body中心化 */
        body {
            background-image: url("<c:url value='/images/Background.jpg' />");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        /*类选择器*/
        .container {
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        /*表单项水平居中*/
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        /*针对输入框*/
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0 10px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .login-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
        }
        /*伪类*/
        .login-btn:hover {
            background-color: #0056b3;
        }

        p {
            color: green;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>注册</h1>
    <!-- 注册表单 -->
    <form action="<c:url value='/user/addUser' />" method="POST">
        <div>
            <label for="username">用户名:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div>
            <label for="password">密码:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div>
            <button type="submit"class="login-btn">注册</button>
        </div>
    </form>

    <!-- 去登录按钮 -->
    <a href="${pageContext.request.contextPath}/user/login" class="login-btn" >去登录</a>

</div>
</body>
</html>
