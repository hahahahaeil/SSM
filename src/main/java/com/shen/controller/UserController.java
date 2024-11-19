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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

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

    @RequestMapping("main/changePassword")
    public String toEdit() {
        return "password_edit";
    }

    @PostMapping("/login")
    public String doLogin(@RequestParam("username") String username,
                          @RequestParam("password") String password,
                          HttpSession session, Model model) {
        Users user = userService.getUserByname(username);
        if (user != null && user.getPassword().equals(password)) {
            // 登录成功，将 userId 存储在 session 中
            session.setAttribute("id", user.getId());
            model.addAttribute("user", user);  // 将用户信息传递到主页面
            return "main";  // 登录成功后跳转到 cardController
        } else {
            model.addAttribute("error", "账号或密码错误");
            return "login";  // 登录失败返回登录页面
        }
    }


    // 处理注册请求，保存用户数据到数据库
    @PostMapping("/addUser")
    public String addUser(@ModelAttribute Users user) {
        // 调用 service 层将用户信息保存到数据库
        userService.addUser(user);
        return "redirect:/user/login";  // 注册成功后重定向到登录页面
    }

    @PostMapping("/main/changePassword")
    public String changePassword(@RequestParam("username") String username,
                                 @RequestParam("password") String password,
                                 @RequestParam("confirmPassword") String confirmPassword,
                                 RedirectAttributes redirectAttributes) {

        // 校验新密码和确认密码是否一致
        if (!password.equals(confirmPassword)) {
            redirectAttributes.addFlashAttribute("error", "新密码和确认密码不一致");
            return "redirect:/user/main/changePassword";  // 重定向回修改密码页面
        }

        // 通过用户名获取用户信息
        Users user = userService.getUserByname(username);
        if (user == null) {
            redirectAttributes.addFlashAttribute("error", "用户名不存在");
            return "redirect:/user/main/changePassword";  // 用户名不存在，重定向回修改密码页面
        }

        // 更新密码
        user.setPassword(password);  // 设置新密码

        userService.updateUser(user);  // 调用updateUser方法更新密码
        return "redirect:/user/main";
    }

}
