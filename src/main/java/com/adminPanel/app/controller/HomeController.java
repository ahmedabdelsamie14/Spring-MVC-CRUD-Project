package com.adminPanel.app.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{

    @RequestMapping("/")
    public String homePage()
    {
        return "homePage";
    }
}
