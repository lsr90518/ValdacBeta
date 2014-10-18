package com.ValdacBeta.controller;

import com.ValdacBeta.dto.BuhinForm;
import com.ValdacBeta.entity.Buhin;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.service.BuhinService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Lsr on 10/16/14.
 */
@Controller
@RequestMapping("/buhin")
public class BuhinController {

    @Autowired
    BuhinService buhinService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session,ModelMap modelMap){
        //部品一覧
        Kiki kiki = (Kiki) session.getAttribute("kiki");
        if(kiki != null){
            List<Buhin> buhinList = buhinService.getBuhinByKikiId(kiki.getKikiId());
            modelMap.addAttribute("buhinList",buhinList);
        }
        return "addbuhin";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("buhinForm")BuhinForm buhinForm,HttpSession session,ModelMap modelMap){
        Buhin buhin = new Buhin();
        buhin.makeupValueByForm(buhinForm);
        buhin = buhinService.addBuhin(buhin);

        List<Buhin> buhinList = buhinService.getBuhinByKikiId(buhin.getKikiId());
        modelMap.addAttribute("buhinList",buhinList);
        return "addbuhin";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("buhinForm")BuhinForm buhinForm, HttpSession session, ModelMap modelMap){
        Buhin buhin = new Buhin();
        buhin.makeupValueByForm(buhinForm);
        buhin.setBuhinId(buhinForm.getBuhinId());
        buhinService.updateBuhinByBuhin(buhin);

        List<Buhin> buhinList = buhinService.getBuhinByKikiId(buhin.getKikiId());
        modelMap.addAttribute("buhinList",buhinList);
        return "addbuhin";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("buhinId")String buhinId,ModelMap modelMap,HttpSession session){
        buhinService.deleteKikiByKikiByKikiId(buhinId);
        Kiki kiki = (Kiki)session.getAttribute("kiki");
        List<Buhin> buhinList = buhinService.getBuhinByKikiId(kiki.getKikiId());
        modelMap.addAttribute("buhinList",buhinList);
        return "addbuhin";
    }

    @RequestMapping(value = "/getBuhinByBuhinId", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getBuhinByBuhinId(@RequestParam("buhinId") String buhinId){

        Buhin buhin = buhinService.getBuhinById(buhinId);

        Gson gson = new Gson();

        return gson.toJson(buhin);
    }
}
