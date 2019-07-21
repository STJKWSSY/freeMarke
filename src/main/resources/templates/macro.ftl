<html>
   <head>
       <title>freeMarker的macro</title>
       <meta charset="UTF-9">
   </head>

<body>
  <h1>简单的macro例子</h1>
   <#macro easy name ,sex=1,age=2>
        <h1>我的名字是${name}</h1>
        <h2>我的性别是${sex}</h2>
        <h3>我的年纪是${age}</h3>
   </#macro>
    <@easy name="姜楠" sex=2 age=26></@easy>

<h1>macro自定义循环输出的宏</h1>
   <#macro  ans list title>
       <p>主题是${title}</p>
       <ul>
           <#list list as l>
               <li>动物是${l}</li>
           </#list>
       </ul>
   </#macro>
  <@ans list=["狮子","老虎","大象"] title="动物"></@ans>

 <h1>html和nested宏</h1>
  <#import "macroTemplate.ftl" as mm>
    <@mm.htmlHead title="姜楠" ></@mm.htmlHead>
    <@mm.htmlBody>
        　哈哈哈<br>
        　　<input id="test1" type="text" name="name1" value="我的祖国"><br>
        　　<a href="#" onclick="test()">测试jquery</a>
    </@mm.htmlBody>

  <br>
  <h1>自定义传参nested1</h1>
  <#macro test param1="默认值1">
      <p>床前明月光</p><br/>

      <#nested param1,"吃过了没">
  </#macro>

  <@test param1="asdfasdf" ; p1,p2>
      <p>地上${p1}鞋两双${p2}</p><br/>
  </@test>

  <h1>自定义传参nested2</h1>
  <#macro repeat count>
      <#list 1..count as x>
          <#nested x, x/2, x==count>
      </#list>
  </#macro>

  <@repeat count=4 ; c ,halfc ,last>
  ${c}. ${halfc}<#if last> Last!</#if>
  </@repeat>
  <br>
  <h1>宏参数的少循环变量</h1>
<#--  Freemarker中macro循环变量和用户定义指令开始标记指定的数目可以不同，
调用时少指定循环变量，则多指定的值不可见，调用时多指定循环变量，多余的循环变量不会被创建。
 必须依顺序
-->
  <@repeat count=4 ; c, halfc>
      ${c}. ${halfc}
  </@repeat>

</body>
</html>