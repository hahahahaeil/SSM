package com.shen.service;

import com.shen.pojo.Users;

import java.util.List;

public interface UserService {

    // 增加一个用户
    void addUser(Users user);

    // 删除一个用户
    void deleteUser(int id);

    // 更新一个用户
    void updateUser(Users user);

    // 查询一个用户
    Users getUserByname(String name);

    // 查询所有用户
    List<Users> getAllUsers();
}
