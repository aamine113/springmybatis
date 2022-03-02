package uk.co.tutorial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeeController {

    @GetMapping("/")
    public String welcome(){
        return "../index";
    }

    @RequestMapping("/getEmployees")
    public String getEmployees(){
        return "list-employee";
    }
}
