package com.glsc.springbootjsp.controller;

import com.glsc.springbootjsp.entity.User;
import com.glsc.springbootjsp.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ViewController {

    @Autowired
    private UserMapper userMapper;

    @RequestMapping("/")
    public String goHome(){
        return "hello";
    }

    @RequestMapping("/users")
    public String getUsers(){
        return "users";
    }

    @RequestMapping("/getusers")
    @ResponseBody
    public List<User> getUsersData(){
        List<User> list = new ArrayList<>();
        list = userMapper.listAll();
        return list;
    }
}
