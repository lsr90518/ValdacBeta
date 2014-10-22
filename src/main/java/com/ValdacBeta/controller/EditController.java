package com.ValdacBeta.controller;

import com.ValdacBeta.entity.Buhin;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.Valve;
import com.ValdacBeta.service.BuhinService;
import com.ValdacBeta.service.KikiService;
import com.ValdacBeta.service.ValveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Lsr on 10/22/14.
 */

@Controller
@RequestMapping("/list")
public class EditController {

    @Autowired
    ValveService valveService;

    @Autowired
    KikiService kikiService;

    @Autowired
    BuhinService buhinService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session, ModelMap modelMap){

        List<Valve> valveList = valveService.getTenValves();
        List<Kiki> kikiList = kikiService.getTenKikis();
        List<Buhin> buhinList = buhinService.getTenBuhins();

        modelMap.addAttribute("valveList",valveList);
        modelMap.addAttribute("kikiList",kikiList);
        modelMap.addAttribute("buhinList",buhinList);

        return "list";
    }

    @RequestMapping(value = "/valve",method = RequestMethod.GET)
    public String listValve(HttpSession session, ModelMap modelMap){
        List<Valve> valveList = valveService.getTenValves();
        modelMap.addAttribute("valveList",valveList);
        return "listvalve";
    }
}
