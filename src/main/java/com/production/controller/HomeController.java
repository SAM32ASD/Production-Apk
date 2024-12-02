package com.production.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    
    @GetMapping("/")
    public String home() {
        return "index";
    }
    
    @GetMapping("/challenges")
    public String challenges() {
        return "challenges";
    }
    
    @GetMapping("/expectations")
    public String expectations() {
        return "expectations";
    }
}