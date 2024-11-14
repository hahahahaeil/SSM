<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>名片管理系统</title>
  <style>
    /* 页面背景设置 */
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

    /* 主容器 */
    .container {
      text-align: center;
      padding: 80px 20px;
    }

    h1 {
      font-size: 3.5em;
      margin-bottom: 50px;
      font-weight: bold;
    }

    /* 使用 Flexbox 控制布局 */
    .modules {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 30px;
    }

    /* 每个模块的卡片样式 */
    .module-link {
      display: block;
      background-color: #ffffff;
      color: #333;
      font-size: 1.5em;
      padding: 30px;
      width: 250px;
      border-radius: 15px;
      text-decoration: none;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .module-link:hover {
      transform: translateY(-10px);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
    }

    .module-link:active {
      transform: translateY(0);
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
    }

    .module-link .module-description {
      margin-top: 10px;
      font-size: 1.1em;
      color: #555;
    }

    /* 安全退出按钮样式 */
    .logout-btn {
      display: block;
      width: 220px;
      padding: 15px;
      background-color: #f44336;
      color: white;
      text-align: center;
      border-radius: 10px;
      margin-top: 40px;
      font-size: 1.2em;
      text-decoration: none;
      transition: background-color 0.3s ease;
    }

    .logout-btn:hover {
      background-color: #e53935;
    }

    /* 响应式设计 */
    @media (max-width: 768px) {
      .modules {
        flex-direction: column;
        align-items: center;
      }

      .module-link {
        width: 80%;
        margin: 10px 0;
      }

      .logout-btn {
        width: 80%;
      }
    }
  </style>
</head>
<body>
<div class="container">
  <h1>欢迎来到名片管理系统</h1>

  <div class="modules">
    <!-- 第一排模块 -->
    <a href="/cardManagement" class="module-link">
      名片管理
      <div class="module-description">管理和编辑你的名片</div>
    </a>

    <a href="/changePassword" class="module-link">
      修改密码
      <div class="module-description">更改你的登录密码</div>
    </a>

    <!-- 第二排模块 -->
    <a href="/logout" class="module-link">
      安全退出
      <div class="module-description">安全退出系统</div>
    </a>
  </div>

  <!-- 安全退出按钮 -->
  <a href="${pageContext.request.contextPath}/index" class="logout-btn">返回首页</a>
</div>
</body>
</html>
