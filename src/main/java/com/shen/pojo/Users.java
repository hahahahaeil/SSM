package com.shen.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {

    private int id;                // 主键，自动递增
    private String username;       // 用户名
    private String password;       // 密码
    private String registration_username; // 注册时使用的用户名（唯一）
    private Timestamp created_at;   // 创建时间

}

