package com.freemarke.demo.entity;

/**
 * @author  grolia
 * @date 2019/7/16
 *
 */
public class User {
    private  String userName;
    private  Integer age;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public  User(){

    }

    public User(String userName, Integer age) {
        this.userName = userName;
        this.age = age;
    }
}
