package com.ValdacBeta.controller;
import java.io.*;
import java.util.HashMap;
import java.util.List;

import com.ValdacBeta.dto.SearchResultObject;
import com.ValdacBeta.service.SearchService;
import org.apache.lucene.queryparser.classic.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Lsr on 10/20/14.
 */

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    SearchService searchService;

    @RequestMapping(method = RequestMethod.GET)
    public String index() throws IOException, ParseException {
        return "index";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String query(@RequestParam("keyword")String keyword, ModelMap modelMap) throws IOException, ParseException {

        List<SearchResultObject> results = searchService.generateIndex(keyword);

        modelMap.addAttribute("results",results);

        return "edit";
    }


}
