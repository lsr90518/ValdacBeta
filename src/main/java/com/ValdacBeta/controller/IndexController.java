package com.ValdacBeta.controller;

import com.ValdacBeta.entity.User;
import com.ValdacBeta.entity.Valve;
import com.ValdacBeta.service.LuceneIndexService;
import com.ValdacBeta.service.ValveService;
import org.apache.lucene.store.Directory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Lsr on 10/10/14.
 */

@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    ValveService valveService;

    @Autowired
    LuceneIndexService luceneIndexService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session,ModelMap modelMap){
        User user = (User)session.getAttribute("user");

        session.removeAttribute("valve");
        session.removeAttribute("kiki");
        session.removeAttribute("buhin");

        List<Valve> valveList = valveService.getTenValves();
        modelMap.addAttribute("valveList",valveList);

        Directory index = (Directory)session.getAttribute("index");
        if(null == index) {
            index = luceneIndexService.generateRAMIndex();
        }
        session.setAttribute("index",index);
        if(user == null) {
            return "login";
        } else {
            return "index";
        }
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String add(HttpSession session,ModelMap modelMap){
        return "redirect:/valve";
    }

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String edit(HttpSession session,ModelMap modelMap){
        return "redirect:/list";
    }
}
