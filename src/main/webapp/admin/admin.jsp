<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2016/6/27
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>管理员主页</h1>
${sessionScope.user.username}
<table border="1">
    <tr>
        <th>序号</th>
        <th>文章标题</th>
        <th>发布时间</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="health" items="${sessionScope.healths}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="/health/queryById/${health.id}">${health.title}</a></td>
            <td>${health.subtime}</td>
            <td><a href="/health/remove/${health.id}">删除</a></td>
            <td><a href="/health/queryToModify/${health.id}">修改</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
发布新文章
<form action="${ctx}/health/create" method="post">
    <input type="text" name="title" ><br>
    <textarea name="summary" cols="30" rows="5"></textarea><br>
    <textarea name="substance" cols="30" rows="20"></textarea><br>
    <input type="submit" value="发布">
</form>
</body>
</html>
