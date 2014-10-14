package com.ValdacBeta.controller;

import com.ValdacBeta.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by Lsr on 10/10/14.
 */

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user == null) {
            return "login";
        } else {
            return "addvalve";
        }

    }
}
