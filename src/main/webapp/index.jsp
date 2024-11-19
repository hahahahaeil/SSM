<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>名片管理系统首页</title>
    <style type="text/css">
        /* 背景设计 */
        body {
            background-image: url("<c:url value='images/Background.jpg' />");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
            text-align: center;
        }

        /* 页面容器 */
        .container {
            /*background-color: rgba(0, 0, 0, 0.6); !* 半透明深色背景 *!*/
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            width: 80%;
            max-width: 700px;
            text-align: center;
        }

        /* 页面标题样式 */
        h1 {
            font-size: 48px;
            color: #fff;
            margin-bottom: 30px;
            font-weight: 700;
            letter-spacing: 3px;
        }

        /* 按钮样式 */
        .btn {
            display: inline-block;
            padding: 18px 36px;
            font-size: 20px;
            color: #fff;
            background-color: #007BFF; /* 蓝色按钮 */
            border-radius: 30px;
            text-decoration: none;
            margin: 20px 15px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn:hover {
            background-color: #0056b3; /* 按钮悬停效果 */
            transform: translateY(-3px);
        }

        .btn:active {
            transform: translateY(1px); /* 按钮点击效果 */
        }

        /* 页面底部 */
        .footer {
            position: fixed;
            bottom: 20px;
            font-size: 14px;
            color: #fff;
        }

        .footer a {
            color: #fff;
            text-decoration: none;
            font-weight: 600;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<!-- 页面容器 -->
<div >
    <h1>欢迎来到名片管理系统</h1>
    <!-- 登录和注册按钮 -->
    <a href="${pageContext.request.contextPath}/user/login" class="btn">登录</a>
    <a href="${pageContext.request.contextPath}/user/register" class="btn">注册</a>
</div>

<!-- 页面底部 -->
<div class="footer">
    <p>&copy; 2024 名片管理系统. <a href="#">隐私政策</a> | <a href="#">联系我们</a></p>
</div>

</body>
</html>
