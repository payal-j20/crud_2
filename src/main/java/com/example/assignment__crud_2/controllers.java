package com.example.assignment__crud_2;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RestController;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Payal
 */
@Controller()
public class controllers {
    @RequestMapping(value="/",method=GET)
    public String main(){
        System.out.println("called");
        return "newjsp.jsp";
    }
    
}
