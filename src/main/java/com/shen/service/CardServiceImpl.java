package com.shen.service;

import com.shen.dao.CardMapper;
import com.shen.pojo.Cards;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CardServiceImpl implements CardService {

    @Autowired
    private CardMapper cardMapper;

    // 查询所有名片记录
    @Override
    public List<Cards> getAllCards() {
        return cardMapper.selectAllCards();
    }

    // 根据用户ID查询该用户的所有名片
    @Override
    public List<Cards> getCardsByUserId(int userId) {
        return cardMapper.selectCardsByUserId(userId);
    }

    // 根据名片ID查询名片
    @Override
    public Cards getCardById(int id) {
        return cardMapper.selectCardById(id);
    }

    // 插入一条名片记录
    @Override
    public int insertCard(Cards card) {
        return cardMapper.insertCard(card);
    }

    // 更新名片信息
    @Override
    public int updateCard(Cards card) {
        return cardMapper.updateCard(card);
    }

    // 根据名片ID删除名片
    @Override
    public int deleteCardById(int id) {
        return cardMapper.deleteCardById(id);
    }
}
