package com.ValdacBeta.controller;

import com.ValdacBeta.entity.User;
import com.ValdacBeta.entity.Valve;
import com.ValdacBeta.service.LuceneIndexService;
import com.ValdacBeta.service.ValveService;
import com.sun.deploy.net.HttpResponse;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
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

        //get real path
        System.out.println(System.getProperty("search.root"));
        File rootFile = new File(System.getProperty("search.root"));
        String imageRoot = rootFile.getParent();
        session.setAttribute("imageRoot",System.getProperty("search.root"));

        session.removeAttribute("valve");
        session.removeAttribute("kiki");
        session.removeAttribute("buhin");

        List<Valve> valveList = valveService.getTenValves();
        modelMap.addAttribute("valveList",valveList);

        String indexPath = (String)session.getAttribute("indexPath");
        if(null == indexPath) {
//            index = luceneIndexService.generateRAMIndex();
            indexPath = luceneIndexService.generateLocalIndex();
        }
        session.setAttribute("indexPath",indexPath);
        if(user == null) {
            return "login";
        } else {
            return "index";
        }
    }
}
