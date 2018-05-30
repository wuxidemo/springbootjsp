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
    <link href="/css/jquery.dataTables.css" rel="stylesheet" />
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/jquery.dataTables.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script>


        $(document).ready( function () {
            $('#table_id_example').DataTable({
                "ajax": {
                    "url": "/getusers",
                    "dataSrc": ""
                },
                "columns": [
                    { "data": "name" },
                    { "data": "create_date" },
                    { "data": "email" }
                ],
                language: {
                    "sProcessing": "处理中...",
                    "sLengthMenu": "显示 _MENU_ 项结果",
                    "sZeroRecords": "没有匹配结果",
                    "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                    "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                    "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                    "sInfoPostFix": "",
                    "sSearch": "搜索:",
                    "sUrl": "",
                    "sEmptyTable": "表中数据为空",
                    "sLoadingRecords": "载入中...",
                    "sInfoThousands": ",",
                    "oPaginate": {
                        "sFirst": "首页",
                        "sPrevious": "上页",
                        "sNext": "下页",
                        "sLast": "末页"
                    },
                    "oAria": {
                        "sSortAscending": ": 以升序排列此列",
                        "sSortDescending": ": 以降序排列此列"
                    }
                }
            });
        } );
    </script>
</head>
<body>
<div class="container">

    <p> <h1 class="center-pill text-center" >用户列表</h1></p>

    <table id="table_id_example" class="display">
        <thead>
        <tr>
            <th>姓名</th>
            <th>日期</th>
            <th>邮箱</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Row 1 Data 1</td>
            <td>Row 1 Data 2</td>
        </tr>
        <tr>
            <td>Row 2 Data 1</td>
            <td>Row 2 Data 2</td>
        </tr>
        </tbody>
    </table>


</div>
</body>
</html>
