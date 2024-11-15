package com.shen.dao;

import com.shen.pojo.Cards;
import java.util.List;

public interface CardMapper {

    // 查询所有名片记录
    List<Cards> selectAllCards();

    // 根据用户ID查询该用户的所有名片
    List<Cards> selectCardsByUserId(int userId);

    // 根据名片ID查询名片
    Cards selectCardById(int id);

    // 插入一条名片记录
    int insertCard(Cards card);

    // 更新名片信息
    int updateCard(Cards card);

    // 根据名片ID删除名片
    int deleteCardById(int id);
}
