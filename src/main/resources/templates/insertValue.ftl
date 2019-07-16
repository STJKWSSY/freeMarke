<html>
   <head>
       <title>插值详解</title>
       <meta charset="UTF-9">
   </head>

<body>
<h1>插值结果为数字值</h1>
  <#-- 通用插值 ${expr} -->
  <#-- 插值结果为字符串值，直接输出表达式结果 -->
  <#-- 插值结果为数字值，  根据默认格式将表达式结果转换成文本输出,可以使用内建的字符串函数格式化单个值 -->
<#--   <#settion number_format="currency"/>-->
   <#assign answer=42 />
   ${answer}
   ${answer?string}
   ${answer?string.number}
<#--   ${answer?string.currency}-->
   ${answer?string.percent}
   ${answer}

<h1>插值结果为日期值1111</h1>
${today?string("yyyy-MM-dd HH:mm:ss zzzz")}
${today?string("EEE,MMM d, ''yy")}
${today?string("EEEE,MMMM dd, yyyy, hh:mm:ss a '('zzz')'")}

<h1>插值结果为布尔值</h1>
<#assign foo=true/>
${foo?string("yes", "no")}


</body>
</html>