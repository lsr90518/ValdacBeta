package com.ValdacBeta.controller;

import com.ValdacBeta.dto.KikiForm;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.User;
import com.ValdacBeta.service.KikiService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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

        return "addkiki";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("KikiForm")KikiForm kikiForm,ModelMap modelMap){
        //change function to json

        Kiki kiki = new Kiki();
        kiki.makeupValveByForm(kikiForm);
        kiki = kikiService.addKiki(kiki);

        List<Kiki> kikiList = kikiService.getKikiBySysId(kiki.getKikiSysId());
        modelMap.addAttribute("kikiList",kikiList);

        return "addkiki";
    }
}
