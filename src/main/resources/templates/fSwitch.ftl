<html>
   <head>
       <title>freeMarker的Switch</title>
       <meta charset="UTF-9">
   </head>

<body>

<#--1. switch（expr）,其中expr只能是一下两种：-->
<#--a>枚举常量:内部是由整型或者字符类型实现-->
<#--b>整数表达式:整数表达式指的是基本类型int或者包装类Integer，也包括不同的长度整型，例如short。-->
<#--2. case后面接的可以使常量数值，也可以是常量计算式，但是不能使变量或者是带有变量的表达式。-->

<h1>字符串用法</h1>
<#switch user.userName>
    <#case "11">
        我是一一，请多关照
    <#break>
    <#case "22">
    我是二二，请多关照
     <#break>
    <#case "九九">
     我是九九，猜对啦
    <#break>
     <#default>
      this is a choose,are you know?
</#switch>

<br>
<h1>数字用法</h1>
<#switch user.age>
     <#case 11>
      今年我11岁了
      <#break>
    <#case 22>
        今年我22岁了
        <#break>
    <#case 33>
        今年我33岁了
        <#break>
    <#default>
        我也不知道哦，嘻嘻
</#switch>
</body>
</html>