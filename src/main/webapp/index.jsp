<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2016/6/27
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
  <head>
    <title>登陆</title>
  </head>
  <body>
  <a href="${ctx}/register.jsp">注册</a>

  <form action="${ctx}/user/login" method="post">
    <input type="text" name="username" placeholder="用户名"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="登录">
  </form>

  </body>
</html>
