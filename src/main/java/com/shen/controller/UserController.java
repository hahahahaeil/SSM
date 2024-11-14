package com.shen.controller;

import com.shen.pojo.Users;
import com.shen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
//    service!

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/index")
    public String index() {
        return "/";  // 返回 index.jsp 页面
    }

    @RequestMapping("/login")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/register")
    public String toRegister() {
        return "register";
    }

    @RequestMapping("/main")
    public String toMain() {
        return "main";
    }
    @PostMapping("/login")
    public String doLogin(@RequestParam("username") String username,
                          @RequestParam("password") String password,
                          Model model) {
        Users user = userService.getUserByname(username);
        if (user != null && user.getPassword().equals(password)) {
            // 验证通过，跳转到主页面
            model.addAttribute("user", user);  // 将用户信息传递到主页面
            return "main";  // 注册成功后重定向到登录页面
        } else {
            // 验证失败，返回登录页面并显示错误信息
            model.addAttribute("error", "账号或密码错误");
            return "register";
        }
    }


    // 处理注册请求，保存用户数据到数据库
    @PostMapping("/addUser")
    public String addUser(@ModelAttribute Users user) {
        // 调用 service 层将用户信息保存到数据库
        userService.addUser(user);
        return "redirect:/user/login";  // 注册成功后重定向到登录页面
    }

}
