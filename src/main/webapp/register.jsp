<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>

<html>
<head>
    <title>注册</title>
    <script type="text/javascript">
        function valForm() {
            var password = document.getElementById("password").value.trim();
            var repassword = document.getElementById("repassword").value.trim();

            if(password !=repassword){
                alert("两次密码不对");
                return false;
            }
            return true;
        }

        function save(){
            if(!valForm()){
                return false
            }
        }
    </script>
</head>
<body>
<h1>用户注册</h1>
<form action="${ctx}/user/register" method="post" onsubmit="return save()">
   用户名：<input type="text" name="username" placeholder="用户名" required ="required"><br>
    密码：<input type="password" name="password" id="password" placeholder="密码" required ="required"><br>
    确认密码：<input type="password" name="repassword" id="repassword" placeholder="确认密码" required ="required"><br>
    联系电话：<input type="tel" name="tel" placeholder="电话" required ="required"><br>
    联系地址：<input type="text" name="address" placeholder="联系地址" required ="required"><br>
    <button name="button" value="submit">注册</button>
</form>
</body>
</html>
