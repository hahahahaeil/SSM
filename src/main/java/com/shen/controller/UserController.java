package com.shen.controller;

import com.shen.pojo.Users;
import com.shen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
//    service!
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;



    @RequestMapping("/login")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/register")
    public String toRegister() {
        return "register";
    }

}
