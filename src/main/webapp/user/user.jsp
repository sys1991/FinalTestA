<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>普通用户首页</h1>
欢迎您：用户${sessionScope.user.username}

<form action="${ctx}/health/userQuery" method="post">
    标题关键字：<input type="text" name="title"> &nbsp;&nbsp;&nbsp;&nbsp;内容关键字：<input type="text" name="substance"> &nbsp;&nbsp;&nbsp;&nbsp;<input
        type="submit" value="查询">
</form>

<hr>
<table border="1">
    <tr>
        <th>序号</th>
        <th>文章标题</th>
        <th>发布时间</th>
    </tr>
    <c:forEach var="health" items="${sessionScope.healths}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="/health/queryById/${health.id}">${health.title}</a></td>
            <td>${health.subtime}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
