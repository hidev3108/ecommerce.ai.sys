package com.example.ecommerce.controller;

import com.example.ecommerce.service.AiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/recommendations")
public class RecommendationController {
    @Autowired
    private AiService aiService;

    @GetMapping("/{userId}")
    public String getRecommendations(@PathVariable Long userId) {
        return aiService.recommendProducts(userId);
    }
}
