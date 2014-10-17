package com.ValdacBeta.controller;

import com.ValdacBeta.dto.KikiForm;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.User;
import com.ValdacBeta.entity.Valve;
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

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("updateKikiForm")KikiForm kikiForm,ModelMap modelMap){
        Kiki kiki = new Kiki();
        kiki.makeupValveByForm(kikiForm);
        kiki.setKikiId(kikiForm.getKikiId());
        kikiService.updateKikiByKiki(kiki);

        List<Kiki> kikiList = kikiService.getKikiBySysId(kiki.getKikiSysId());
        modelMap.addAttribute("kikiList",kikiList);
        return "addkiki";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("kikiId")String kikiId,ModelMap modelMap){
        kikiService.deleteKikiByKikiByKikiId(kikiId);

        List<Kiki> kikiList = kikiService.getKikiBySysId(1);
        modelMap.addAttribute("kikiList",kikiList);
        return "addkiki";
    }

    @RequestMapping(value = "/{kikiId}", method = RequestMethod.GET)
    public String buhin(@PathVariable("kikiId")String kikiId,ModelMap modelMap,HttpSession session){

        Kiki kiki = kikiService.getKikiByKikiId(kikiId);
        session.setAttribute("kiki",kiki);


        return "redirect:/buhin";
    }

    @RequestMapping(value = "/getKikiByKikiId", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getKikiByKikiId(@RequestParam("kikiId")String kikiId){

        Kiki kiki = kikiService.getKikiByKikiId(kikiId);

        Gson gson = new Gson();

        return gson.toJson(kiki);
    }
}
