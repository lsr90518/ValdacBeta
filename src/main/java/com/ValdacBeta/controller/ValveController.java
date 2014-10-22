package com.ValdacBeta.controller;

import com.ValdacBeta.dto.ValveForm;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.Valve;
import com.ValdacBeta.service.BuhinService;
import com.ValdacBeta.service.KikiService;
import com.ValdacBeta.service.ValveService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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
    @Autowired
    BuhinService buhinService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session, ModelMap modelMap){

        session.removeAttribute("valve");
        session.removeAttribute("kiki");
        session.removeAttribute("buhin");
        return "addvalve";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("ValveForm")ValveForm valveForm, ModelMap modelMap,HttpSession session){

        Valve valve = new Valve();
        valve.makeupValveByForm(valveForm);
        valve = valveService.addValve(valve);
        modelMap.addAttribute("valve",valve);
        session.setAttribute("valve",valve);

        return "redirect:/kiki";
    }

    @RequestMapping(value = "/{kikiSysId}", method = RequestMethod.GET)
    public String getValveById(@PathVariable String kikiSysId,ModelMap modelMap, HttpSession session){

        Valve valve = valveService.getValveByKikiSysId(kikiSysId);
        session.setAttribute("valve",valve);
        modelMap.addAttribute("valve",valve);
        return "editvalve";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String save(@ModelAttribute("ValveForm")ValveForm valveForm, ModelMap modelMap, HttpSession session){

        Valve valve = new Valve();
        valve.makeupValveByForm(valveForm);
        valve.setKikiSysId(valveForm.getKikiSysId());

        valveService.updateValve(valve);
        modelMap.addAttribute("valve",valve);
        modelMap.addAttribute("message","更新完了");
        session.setAttribute("valve",valve);
        return "editvalve";
    }

    @RequestMapping(value = "/delete/{kikiSysId}", method = RequestMethod.GET)
    public String deleteValveById(@PathVariable String kikiSysId, HttpSession session){

        buhinService.deleteBuhinByKikiSysId(kikiSysId);

        kikiService.deleteKikiByKikiSysId(kikiSysId);

        valveService.deleteKikiSystemByKikiSysId(kikiSysId);

        return "redirect:/";
    }

    @RequestMapping(value = "/getAllValveJson", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getCandidateJson(){
        List<Valve> valveList = valveService.getAllValves();
        Gson gson = new Gson();
        return gson.toJson(valveList);
    }
}
