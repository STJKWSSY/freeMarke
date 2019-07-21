<html>
   <head>
       <title>freeMarker的Setting</title>
       <meta charset="UTF-8">
   </head>

<body>
<#--name的取值范围如下：-->
<#--locale:该选项指定该模板所用的国家/语言选项-->
<#--number_format:指定格式化输出数字的格式-->
<#--boolean_format:指定两个布尔值的语法格式,默认值是true,false-->
<#--date_format,time_format,datetime_format:指定格式化输出日期的格式-->
<#--time_zone:设置格式化输出日期时所使用的时区-->
<#setting date_format="currency">
       ${user.userName}
        ${user.age}
</body>
</html>