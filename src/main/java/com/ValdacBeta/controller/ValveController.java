package com.ValdacBeta.controller;

import com.ValdacBeta.dto.ValveForm;
import com.ValdacBeta.entity.Valve;
import com.ValdacBeta.service.ValveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by Lsr on 10/14/14.
 */

@Controller
@RequestMapping("/valve")
public class ValveController {

    @Autowired
    ValveService valveService;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("ValveForm")ValveForm valveForm, ModelMap modelMap){

        Valve valve = new Valve(valveForm);
        System.out.print(valveForm.getKeisikiRyaku());
        valve = valveService.addValve(valve);

        System.out.println(valve.getTrkDate());
        return "addvalve";
    }
}
