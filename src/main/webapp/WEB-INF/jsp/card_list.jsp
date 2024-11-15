
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>名片列表</title>
</head>
<body>
<h1>名片管理</h1>
<a href="${pageContext.request.contextPath}/card/add">添加名片</a>
<table border="1">
  <thead>
  <tr>
    <th>姓名</th>
    <th>电话</th>
    <th>邮箱</th>
    <th>公司</th>
    <th>职位</th>
    <th>地址</th>
    <th>操作</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="card" items="${cards}">
    <tr>
      <td>${card.name}</td>
      <td>${card.phone}</td>
      <td>${card.email}</td>
      <td>${card.company}</td>
      <td>${card.position}</td>
      <td>${card.address}</td>
      <td>
        <a href="${pageContext.request.contextPath}/card/edit/${card.id}">编辑</a> |
        <a href="${pageContext.request.contextPath}/card/delete/${card.id}">删除</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
