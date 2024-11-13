<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>名片管理系统首页</title>
    <style type="text/css">
        /* 设置整体页面背景 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        /* 容器样式 */
        .container {
            width: 80%;
            margin: 50px auto;
            text-align: center;
        }

        /* 页面标题样式 */
        h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 40px;
        }

        /* 按钮的样式 */
        .btn {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            color: #fff;
            background-color: #4CAF50;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            margin: 20px 10px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #45a049;
        }

        /* 简单的页面底部 */
        .footer {
            margin-top: 50px;
            font-size: 14px;
            color: #999;
        }
    </style>
</head>
<body>

<!-- 页面容器 -->
<div class="container">
    <h1>欢迎来到名片管理系统</h1>
    <!-- 登录和注册按钮 -->
    <a href="${pageContext.request.contextPath}/user/login" >登录</a>
    <a href="${pageContext.request.contextPath}/user/register">注册</a>
</div>

<!-- 页面底部 -->
<div class="footer">
    <p>&copy; 2024 名片管理系统. 版权所有</p>
</div>

</body>
</html>
