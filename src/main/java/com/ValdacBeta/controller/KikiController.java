package com.ValdacBeta.controller;

import com.ValdacBeta.dto.KikiForm;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.User;
import com.ValdacBeta.service.KikiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Lsr on 10/15/14.
 */

@Controller
@RequestMapping("/kiki")
public class KikiController {

    @Autowired
    KikiService kikiService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session,ModelMap modelMap){

        User user = (User) session.getAttribute("user");
        modelMap.addAttribute("user",user);

        List<Kiki> kikiList = kikiService.getAllKiki();
        System.out.print(kikiList.size());

        return "addkiki";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("KikiForm")KikiForm kikiForm,ModelMap modelMap){
        //change function to json

        System.out.println(kikiForm.getMaker());

        Kiki kiki = new Kiki();
        kiki.makeupValveByForm(kikiForm);
        kikiService.addKiki(kiki);

        return "addkiki";
    }
}
