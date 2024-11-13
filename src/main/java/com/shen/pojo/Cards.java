package com.shen.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cards {

    private int id;                // 主键，自动递增
    private String name;           // 姓名
    private String phone;          // 电话
    private String email;          // 邮箱
    private String company;        // 公司
    private String position;       // 职位
    private String address;        // 地址
    private byte[] logo;           // logo 图片
    private int user_id;            // 外键，用户ID
    private Timestamp created_at;   // 创建时间

}
