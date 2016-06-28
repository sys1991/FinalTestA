<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>修改内容</title>
</head>
<body>
<h1>修改内容</h1>

<form action="${ctx}/health/modify" method="post">
    <input type="hidden" name="id" value="${sessionScope.health.id}">
    <input type="text" name="title" value="${sessionScope.health.title}"><br>
    <textarea name="summary" cols="30" rows="5">${sessionScope.health.summary}</textarea><br>
    <textarea name="substance" cols="30" rows="20">${sessionScope.health.substance}</textarea>
    <input type="submit" value="提交">
</form>
</body>
</html>
