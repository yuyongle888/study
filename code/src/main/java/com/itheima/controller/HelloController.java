package com.itheima.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/kk")
public class HelloController {
    @RequestMapping("/hello")
    public String hello() {
        return "hello spring boot";
    }
}
