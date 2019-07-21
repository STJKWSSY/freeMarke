<html>
   <head>
       <title>freeMarker的Assign</title>
       <meta charset="UTF-8">
   </head>

<body>
<#--java Freemarker中assign指令为该模板页面创建或替换一个顶层变量。-->
    <#assign x>
        <#list ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天"]as n>
               ${n}
            </#list>
    </#assign>
    ${x}

<br>
<#--  assign迭代Map  -->
<#-- 这里模拟了一个Map集合，定义了三对键值 -->
 <#assign h={"name":"姜楠","性别":"男"} />
<#-- h?keys 调用了一个包装类的方法，将Map的key取出赋值 -->
  <#assign  keys = h?keys />
<#-- ${h[key]} 访问到了Map中的value属性 -->
<#list keys as key>${key} = ${h[key]}; </#list>

<br>
<#assign y="姜楠" />
 ${y}

</body>
</html>