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
   <#setting  number_format="currency"/>
   <#assign answer=42 />
   ${answer}
   ${answer?string}
   ${answer?string.number}
   ${answer?string.currency}
   ${answer?string.percent}
   ${answer}

<h1>插值结果为日期值1111</h1>q
${today?string("yyyy-MM-dd HH:mm:ss zzzz")}
${today?string("EEE,MMM d, ''yy")}
${today?string("EEEE,MMMM dd, yyyy, hh:mm:ss a '('zzz')'")}

<h1>插值结果为布尔值111</h1>
<#assign foo=true/>
${foo?string("yes", "no")}


<h1>插值结果为布尔值111</h1>
<#assign foo1=true/>
${foo1?string("yes", "no")}

<h1>数字格式化插值: </h1>
<#-- #{expr}或#{expr;format} 1. mX:小数部分最小X位 2. MX:小数部分最大X位。 -->
<#assign x=2.582 />
<#assign y=4.133 />
#{x; M2}
#{y; M2}
#{x; m2}
#{y; m2}
#{x; m1M2}
#{y; m1M2}

<h1>避免空值插值</h1>
<#-- 没有定义这个变量，所以默认是空字符串 -->
${name!}
${lala!"abc"}

<h1>判断变量是否存在</h1>
<#if lata??>
<#--   不为空操作-->
   this is true
<#else>
    this is false
</#if>

<h1>序列</h1>
<#assign seq=["winter", "spring", "summer",  "autumn"]>
<#assign nums=[101,102,103,104,105]>
<h1>Hash</h1>
<#assign scores={"语文":78, "数学":89, "英语":87}> ${scores.语文}

<h1>例子</h1>
<#--//用于判断如果存在,就输出这个值-->
${book.name?if_exists }
<#--//默认值xxx-->
${book.name!"xxx"}
${book.date?string('yyyy-MM-dd')} //日期格式
${book?string.number} 20 //三种不同的数字格式
${book?string.currency} <#-- $20.00 -->
${book?string.percent} <#-- 20% -->
${.now?datetime}//当前时间戳

</body>
</html>