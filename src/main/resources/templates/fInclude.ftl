<html>
   <head>
       <title>freeMarker的Include</title>
       <meta charset="UTF-8">
   </head>

<body>


<#--path： 要包含文件的路径。可以使用相对路径和绝对路径。通常使用/(斜杠)来分割路径成分。(用其他话说， 它不用是一个固定的字符串，它也可以是像 profile.baseDir + "/menu.ftl" 这样的东西。)-->
<#--options：一个或多个这样的选项（encoding=encoding, parse=parse）-->
<#--encoding:算作是字符串的表达式。被包含文件从包含的文件继承的编码方式。（ISO-8859-2、UTF-8、GB2312）-->
<#--parse：算作是布尔值的表达式。默认是true。如果它为真，那么被包含的文件将会当做FTL来解析,否则整个文件将被当成简单文本来处理。（也就是说不会在其中查找FreeMarker结构）-->
<#--ignore_missing: 算作是布尔值的表达式-->

        <#include "template.ftl" encoding="UTF-8" parse=true>
        <br>
         <ul>
             <li>我叫${user.userName}</li>
             <li>今年${user.age}</li>
         </ul>
</body>
</html>