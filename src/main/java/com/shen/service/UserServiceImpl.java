package com.shen.service;

import com.shen.dao.UserMapper;
import com.shen.pojo.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    // Service 层调用 DAO 层，组合 UserMapper
    private UserMapper userMapper;

    // 构造器注入或 Setter 注入（这里使用的是 Setter 注入）
    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    // 增加一个用户
    @Override
    public void addUser(Users user) {
        userMapper.addUser(user);
    }

    // 删除一个用户
    @Override
    public void deleteUser(int id) {
        userMapper.deleteUser(id);
    }

    // 更新一个用户
    @Override
    public void updateUser(Users user) {
        userMapper.updateUser(user);
    }

    // 查询一个用户
    @Override
    public Users getUserById(int id) {
        return userMapper.getUserById(id);
    }

    // 查询所有用户
    @Override
    public List<Users> getAllUsers() {
        return userMapper.getAllUsers();
    }
}
