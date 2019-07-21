<html>
   <head>
       <title>freeMarker的引入</title>
       <meta charset="UTF-9">
   </head>

<body>
<#--1. import是将标签中指定的模板中的已定义的宏、函数等导入到当前模板中，并在当前文档中指定一个变量作为该模板命名空间，
    以便当前文档引用。与include的区别是该指令不会讲import指定的模板内容渲染到引用的模板的输出中。
     如：<#import ”../../service.ftl as service>.其作用是将service.ftl中的定义的各宏、函数、变量、自定义、设置等内容用指定的命名空间名称加以引用。
     但是当前文档不会将import的模板输出插入到import标签的位置。-->

<#--2. import和include标签一样可以使用相对路径和绝对路径引用外部模板。 如：service.ftl中定义的宏如下：<#macro branchService>,
         在当前文档中可以这样导入<#import "../../service.ftl" as service> ,service变量作为该文档中使用service中服务的命名空间，
         调用时应该这样:<@service.branchService >..... import也可以被引入多次， 但是多次引入和单次引入的效果是一样的。-->
       <#import "import1.ftl" as im1>
        <#import "import2.ftl" as im2>
          <ul>
              <li>im1的值是:${im1.userNmae}</li>
              <li>im2的值是:${im2.userNmae}</li>
               <li>自己的值是:${user.userName}</li>
          </ul>

</body>
</html>