package com.freemarke.demo.controller;

import com.freemarke.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author grolai
 * freemarkDemo
 *
 */
@Controller
public class FreeMarkeController {

    /**
     * 文本，直接输出
     * 注释，即<#--...-->格式不会输出
     * 插值: 即${}或者#{}格式的部分，将使用数据模型中的部分代替输出
     * FTL指令: FreeMarker指令,和HTML标记类似，名字前面加#于以区别，不会输出
     * @param model  model
     * @return String
     */
    @RequestMapping("/demo/test")
    public String test(Model model){
        List<User> userList = new ArrayList<>(5);
        userList.add(new User("姜楠",26));
        userList.add(new User("高永博",24));
        userList.add(new User("张超",23));
        userList.add(new User("鲁阳",24));
        // 需要一个Model对象
        model.addAttribute("list",userList);
        //跳转视图
        return "user";
    }

    /**
     * 通用插值详解
     *
     * @param model model
     * @return String
     */
    @RequestMapping("demo/insertValue")
    public String insertValue(Model model){
        model.addAttribute("today",new Date());
        return "insertValue";
    }

}
