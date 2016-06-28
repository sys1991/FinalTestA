<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>详细内容</title>
</head>
<body>
<h1>文章详细内容查看</h1>

<h3>${sessionScope.health.title}</h3>
发布时间：${sessionScope.health.subtime}
<p>摘要：${sessionScope.health.summary}</p>
<p>正文：${sessionScope.health.substance}</p>
</body>
</html>
