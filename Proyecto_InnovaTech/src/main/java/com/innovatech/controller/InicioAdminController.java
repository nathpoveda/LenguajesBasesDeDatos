package com.innovatech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InicioAdminController {

    @GetMapping("/inicio-admin")
    public String adminPreview() {
        return "inicioadmin";
    }
}