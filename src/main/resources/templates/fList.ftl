<html>
   <head>
       <title>插值详解</title>
       <meta charset="UTF-9">
   </head>

<body>

<#--name是list循环的时候取的一个循环变量.相关指令如下：-->
<#--item_index:当前变量的索引值-->
<#--item_has_next:是否存在下一个对象-->
<#--break:跳出迭代-->
<#--?sort_by("字段") ?reverse =>升序/降序-->
<h1>list循环</h1>
   <ul>
       <#list userList?sort_by("age") as user>
           <li>list的长度${userList?size}</li>
           <li>list的下标${user_index}</li>
           <li>list的值${user.age}</li>
           <li>list的值${user.userName}</li>
           <li>
               是否最后一个元素
               <#if user_has_next>
                   这不是最后一个
               </#if>
           </li>
           <#--当条件符合时，跳出 -->
           <#if user.userName == "grolia3">
               <#break>
           </#if>
       </#list>
   </ul>




<h1>map循环</h1>
<#-- 这里注意map的key必须是string类型 -->
<#list datas?keys as user>
    <tr>
        <td>${user}</td>
        <td>${datas[user].userName}</td>
    </tr>
</#list>
</body>
</html>