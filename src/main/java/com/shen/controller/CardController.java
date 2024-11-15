package com.shen.controller;

import com.shen.pojo.Cards;
import com.shen.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/card")
public class CardController {

    @Autowired
    private CardService cardService;

    @GetMapping("/list")
    public String listCardsByUser(HttpSession session, Model model) {
        // 从 session 中获取 userId
        Integer userId = (Integer) session.getAttribute("id");

        if (userId != null) {
            List<Cards> cards = cardService.getCardsByUserId(userId);
            model.addAttribute("cards", cards);
            return "card_list";  // 显示用户名片
        } else {
            // 如果没有找到 userId，重定向回登录页面
            return "redirect:/user/login";
        }
    }



    // 跳转到名片添加页面
    @RequestMapping("/add")
    public String toAddCard() {
        return "card_add";  // 名片添加页面
    }

    // 处理名片添加请求
    @PostMapping("/add")
    public String addCard(@ModelAttribute Cards card, HttpSession session) {
        // 从 session 获取当前用户的 userId
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId != null) {
            // 设置名片的 user_Id
            card.setUser_id(userId);
            // 调用 service 层保存名片
            cardService.insertCard(card);
        }
        return "redirect:/card/list";  // 添加完成后跳转到名片列表页面
    }

    // 删除名片
    @RequestMapping("/delete/{id}")
    public String deleteCard(@PathVariable("id") int id) {
        cardService.deleteCardById(id);
        return "redirect:/card/list";  // 删除完成后跳转到名片列表页面
    }

    // 跳转到名片编辑页面
    @RequestMapping("/edit/{id}")
    public String toEditCard(@PathVariable("id") int id, Model model) {
        Cards card = cardService.getCardById(id);
        model.addAttribute("card", card);
        return "card_edit";  // 名片编辑页面
    }

    // 处理名片编辑请求
    @PostMapping("/edit/{id}")
    public String editCard(@PathVariable("id") int id, @ModelAttribute Cards card) {
        card.setId(id);  // 保证 id 一致
        cardService.updateCard(card);
        return "redirect:/card/list";  // 编辑完成后跳转到名片列表页面
    }
}
