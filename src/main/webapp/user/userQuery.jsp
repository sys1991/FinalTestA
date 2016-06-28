<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>用户查询结果页面</h1>
欢迎您：用户${sessionScope.user.username}
<hr>
<table border="1">
    <tr>
        <th>序号</th>
        <th>文章标题</th>
        <th>发布时间</th>
    </tr>
    <c:forEach var="health" items="${sessionScope.userQuery}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="/health/queryById/${health.id}">${health.title}</a></td>
            <td>${health.subtime}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
