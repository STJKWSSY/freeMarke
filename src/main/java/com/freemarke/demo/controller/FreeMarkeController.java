package com.freemarke.demo.controller;

import com.freemarke.demo.entity.Book;
import com.freemarke.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.UnsatisfiedServletRequestParameterException;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import java.util.*;

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
    @RequestMapping("/demo/insertValue")
    public String insertValue(Model model){
        Book book = new Book();
        book.setDate(new Date());
        book.setName("123");
        model.addAttribute("today",new Date());
        model.addAttribute("book",book);
        return "insertValue";
    }

    /**
     * Demo:list
     *
     * @param model
     * @return
     */
    @RequestMapping("/demo/fList")
    public String  fList(Model model){
        List<User> userList = new ArrayList<>(16);
        Map<String,Object> userMap = new HashMap<>(16);
        for (int i = 0; i < 5; i++) {
            User user = new User();
            user.setUserName("grolia"+i);
            user.setAge(i);
            userList.add(user);
            userMap.put("你好"+i,user);
        }
        if(1 != 1){
            userMap.put("你好1","姜楠");
            userMap.put("你好2","姜楠");
            userMap.put("你好3","姜楠");
        }
        model.addAttribute("userList",userList);
        model.addAttribute("datas",userMap);
        return "fList";
    }

    /**
     * if/else
     *
     * @param model model
     * @return String
     */
    @RequestMapping("/demo/fIfElse")
    public String fIfElse(Model model){
        User user = new User();
        user.setUserName("张三丰");
        model.addAttribute("user",user);
        return "fIfElse";
    }

    /**
     * switch
     *
     * @param model model
     * @return String
     */
    @RequestMapping("/demo/fSwitch")
    public String fSwitch(Model model){
        User user  = new User();
        user.setUserName("九九");
        user.setAge(11);
        model.addAttribute("user",user);
        return "fSwitch";
    }

    /**
     * freeMarker include
     *
     * @param model model
     * @return String
     */
    @RequestMapping("/demo/fInclude")
    public String fInclude(Model model){
        User user  = new User();
        user.setUserName("我是江南");
        user.setAge(11);
        model.addAttribute("user",user);
        return "fInclude";
    }

    /**
     * freeMarker import
     *
     * @param model model
     * @return String
     */
    @RequestMapping("/demo/fImport")
    public String fImport(Model model){
        User user  = new User();
        user.setUserName("我是张学友");
        user.setAge(50);
        model.addAttribute("user",user);
        return "fImport";
    }

    /**
     *  freeMarker setting
     *
     * @param model model
     * @return String
     */
    @RequestMapping("/demo/fSetting")
    public String fSetting(Model model){
        User user  = new User();
        user.setUserName("我是张学友");
        user.setAge(50);
        model.addAttribute("user",user);
        return "fSetting";
    }

    /**
     * freemarker assign
     *
     * @param model
     * @return
     */
    @RequestMapping("/demo/fAssign")
    public String fAssign(Model model){
        return "fAssign";
    }

    /**
     * freemarker assign
     *
     * @param model
     * @return
     */
    @RequestMapping("/demo/fMacro")
    public String fMacro(Model model){
        return "macro";
    }

}
