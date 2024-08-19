package com.example.ecommerce.service;

import org.springframework.stereotype.Service;

@Service
public class AiService {
    public String recommendProducts(Long userId) {
        // Dummy implementation
        return "Recommended products based on user " + userId;
    }
}
