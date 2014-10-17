package com.ValdacBeta.controller;

import com.ValdacBeta.dto.ValveForm;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.Valve;
import com.ValdacBeta.service.KikiService;
import com.ValdacBeta.service.ValveService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


/**
 * Created by Lsr on 10/14/14.
 */

@Controller
@RequestMapping("/valve")
public class ValveController {

    @Autowired
    ValveService valveService;
    @Autowired
    KikiService kikiService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "/addvalve";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("ValveForm")ValveForm valveForm, ModelMap modelMap,HttpSession session){

        Valve valve = new Valve();
        valve.makeupValveByForm(valveForm);
        valve = valveService.addValve(valve);
//        modelMap.addAttribute("BenMeisyo","BenMeisyo");
        modelMap.addAttribute("valve",valve);
        session.setAttribute("valve",valve);
//        List<Kiki> kikiList = kikiService.getKikiBySysId(valve.getKikiSysId());

        return "addkiki";
    }

    @RequestMapping(value = "/getAllValveJson", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getCandidateJson(){
        List<Valve> valveList = valveService.getAllValves();
        Gson gson = new Gson();
        return gson.toJson(valveList);
    }
}
