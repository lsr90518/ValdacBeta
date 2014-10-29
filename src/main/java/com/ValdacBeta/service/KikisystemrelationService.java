package com.ValdacBeta.service;


import com.ValdacBeta.dao.KikisystemrelationMapper;
import com.ValdacBeta.entity.Kikisystemrelation;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lsr on 10/27/14.
 */

@Service
public class KikisystemrelationService {

    @Resource
    KikisystemrelationMapper kikisystemrelationMapper;

    public List<Integer> getKikiIdsByKikiSysId(String kikiSysId){
        return kikisystemrelationMapper.findKikiIdsByKikiSysId(Integer.valueOf(kikiSysId));
    }

    public List<Integer> getBuhinIdsByKikiSysId(String kikiSysId){
        return kikisystemrelationMapper.findBuhinIdsByKikiSysId(Integer.valueOf(kikiSysId));
    }

    public List<Kikisystemrelation> getItemsByKikiSysId(String kikiSysId){
        return kikisystemrelationMapper.findAllByKikiSysId(Integer.valueOf(kikiSysId));
    }

    public void addKikiSysId(int kikiSysId) {
        kikisystemrelationMapper.insertKikiSysId(kikiSysId);
    }

    public void addValveKiki(Integer kikiSysId, int kikiId) {
        kikisystemrelationMapper.insertValveKiki(kikiSysId,kikiId);
    }

    public void addRecord(Kikisystemrelation kikisystemrelation) {
        kikisystemrelationMapper.insertRecord(kikisystemrelation);
    }
}
