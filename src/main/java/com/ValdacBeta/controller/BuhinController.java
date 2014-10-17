package com.ValdacBeta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by Lsr on 10/16/14.
 */
@Controller
@RequestMapping("/buhin")
public class BuhinController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session){
        //部品一覧

        return "addbuhin";
    }
}
