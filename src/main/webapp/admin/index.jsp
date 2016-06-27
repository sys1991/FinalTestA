<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2016/6/27
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>admin</title>
</head>
<body>
<h1>管理员登录</h1>

<form action="${ctx}/admin/login" method="post">
    <input type="text" name="username" placeholder="用户名"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="登录">
</form>
${requestScope.message}
</body>
</html>
