package com.ValdacBeta.service;

import com.ValdacBeta.dao.BuhinMapper;
import com.ValdacBeta.dao.KikiMapper;
import com.ValdacBeta.dao.ValveMapper;
import com.ValdacBeta.entity.Buhin;
import com.ValdacBeta.entity.Kiki;
import com.ValdacBeta.entity.Valve;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lsr on 10/21/14.
 */

@Service
public class SearchService {

    @Resource
    BuhinMapper buhinMapper;

    @Resource
    KikiMapper kikiMapper;

    @Resource
    ValveMapper valveMapper;

    public List<Valve> searchValveByKeywords(String keywords){
        return null;
    }

    public List<Kiki> searchKikiByKeywords(String keywords){
        return null;
    }

    public List<Buhin> searchBuhinByKeywords(String Buhin){
        return null;
    }
}
