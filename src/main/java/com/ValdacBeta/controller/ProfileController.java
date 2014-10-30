package com.ValdacBeta.controller;

import com.ValdacBeta.entity.User;
import com.ValdacBeta.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

/**
 * Created by zhangrui on 2014/10/16.
 */
@Controller
@RequestMapping("/profile")
public class ProfileController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/getUserProfile", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String getUserProfile(HttpSession session,
                                ModelMap modelMap){
        User user=(User)session.getAttribute("user");
        if(user != null){
            return "profile/profile";
        } else {
            return "login";
        }
    }

    @RequestMapping(value = "/getUserProfileImage", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String getUserProfileImage(HttpSession session,
                                 ModelMap modelMap){
        User user=(User)session.getAttribute("user");
        if(user != null){
            return "profile/image";
        } else {
            return "login";
        }
    }

    @RequestMapping(value="/updateUserProfile",method = RequestMethod.POST,produces="text/html;charset=UTF-8")
    public String updateUserProfile(@RequestParam(value = "username") String username,
                                    @RequestParam(value = "password") String password,
                                    @RequestParam(value = "department") String department,
                                    HttpSession session,
                                    ModelMap modelMap){
        User user=(User)session.getAttribute("user");
        if (user !=null){
            user = userService.updateUser(user,username,password,department);
            modelMap.addAttribute("user",user);
            session.setAttribute("user",user);
            modelMap.addAttribute("message","更新完成");
            return "profile/profile";
        } else {
            return "login";
        }
        }

    @RequestMapping(value="/updateUserProfileImage",method = RequestMethod.POST,produces="text/html;charset=UTF-8")
    public String updateUserProfileImage(HttpSession session,
                                    ModelMap modelMap){
        User user=(User)session.getAttribute("user");


        if (user !=null){
//            user = userService.updateUserProfileImage(user,imageId);

            modelMap.addAttribute("user",user);
            session.setAttribute("user",user);
            modelMap.addAttribute("message","更新完成");
            return "profile/image";
        } else {
            return "login";
        }
    }
    }
