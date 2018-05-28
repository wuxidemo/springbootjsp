<%--
  Created by IntelliJ IDEA.
  User: wuyifeng
  Date: 2018/5/28
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取Users列表</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <script type="text/javascript">
        $.ajax({
            url:"/getusers",
            type:"GET",
            dataType:"json",
            success: function (data) {
                for(var i=0;i<data.length;i++){
                    var name = data[i].name;
                    var create_date = data[i].create_date;
                    var email = data[i].email;
                    var tr = "<td>" + name + "</td>" + "<td>" + create_date + "</td>" + "<td>" + email + "</td>";
                    $("#table_tr").append(tr);
                }


            }
        })
    </script>

    <p> <h1 class="center-pill">用户列表</h1></p>

    <table class="table table-border table-bordered">
        <thead>
        <tr><th>姓名</th><th>日期</th><th>邮箱</th></tr>
        </thead>
        <tbody>
        <tr id ="table_tr"></tr>
        </tbody>
    </table>

</div>
</body>
</html>
