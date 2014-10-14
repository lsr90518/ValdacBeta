package com.ValdacBeta.service;

import com.ValdacBeta.dao.ValveMapper;
import com.ValdacBeta.entity.Valve;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Lsr on 10/14/14.
 */

@Service
public class ValveService {

    @Resource
    ValveMapper valveMapper;

    public List<Valve> getAllValves(){
        List<Valve> valveList = valveMapper.findAllValve();
        return valveList;
    }

    public Valve addValve(Valve valve){

        //make id
        valve.setkCode("");
        valve.setKikiSysSeq("");

        //append Date
        Date date = new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd");
        valve.setTrkDate(sdf1.format(date));
        valve.setUpdDate(sdf1.format(date));

        valveMapper.insertValve(valve);
        return valve;
    }
}