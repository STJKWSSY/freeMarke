<html>
   <head>
       <title>freeMarker的IF/ELSE</title>
       <meta charset="UTF-9">
   </head>

<body>

<#--1. condition,condition2等表达式将被计算成布尔值。-->
<#--2. elseif 和 else必须出现在if的内部，也就是说，在if的开始标签和结束标签之间。-->
<#--3. if中可以包含任意数量的elseif(包含0个),而且结束时else时可选的。-->

 <#if user.userName == "张无忌">
     <h1>我是张无忌</h1>
     <#elseif user.userName == "张三丰">
      <h1>我是张三丰</h1>
     <#elseif user.userName == "张翠山">
       <h1>我是张翠上</h1>
     <#else>
       <h1>其实我是大猪头0-0</h1>
 </#if>
</body>
</html>