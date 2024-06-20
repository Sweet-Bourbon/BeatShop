package com.example.BeatShop.controllers;


import com.example.BeatShop.models.User;
import com.example.BeatShop.services.ProductService;
import com.example.BeatShop.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final ProductService productService;
    private final UserService userService;
    @GetMapping("/")
    public String begin(Principal principal, Model model)
    {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "begin";
    }

    @GetMapping("/profile")
    public String profile(Principal principal,
                          Model model) {
        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        return "profile";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }


    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if(!userService.createUser(user)){
            model.addAttribute("errorMessage", "Пользователь с email:" + user.getEmail() + " уже существует!");
            return "registration";
        }
        userService.createUser(user);
        return "redirect:/login";
    }


    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model){
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProducts());
        return "user-info";
    }
}
