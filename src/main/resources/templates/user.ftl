<html>
   <head>
       <title>展示用户数据</title>
       <meta charset="UTF-9">
   </head>

<body>
    <table border="1" align="center" width="50%">
        <h1>我的第一个FreeMarker</h1>
          <tr>
              <th>ID</th>
              <th>Name</th>
          </tr>

        <#list list as user>
            <tr>
                <td>${user.userName}</td>
                <td>${user.age}</td>
            </tr>
        </#list>
    </table>
</body>
</html>