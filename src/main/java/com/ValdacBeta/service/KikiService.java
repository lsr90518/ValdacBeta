package com.ValdacBeta.service;

import com.ValdacBeta.dao.KikiMapper;
import com.ValdacBeta.entity.Kiki;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Lsr on 10/15/14.
 */

@Service
public class KikiService {

    @Resource
    KikiMapper kikiMapper;

    public List<Kiki> getAllKiki(){
        return kikiMapper.findAllKiki();
    }

    public Kiki addKiki(Kiki kiki){
        //append Date
        Date date = new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd");
        kiki.setTrkDate(sdf1.format(date));
        kiki.setUpdDate(sdf1.format(date));
        kikiMapper.insertMachine(kiki);

        //make id
        kiki.setKikiId(kikiMapper.getLastInsertId());
        return kiki;
    }

    public void updateKikiByKiki(Kiki kiki){
        kikiMapper.updateKikiByKiki(kiki);
    }

    public void deleteKikiByKikiByKikiId(String kikiId){
        kikiMapper.deleteKikiByKikiId(Integer.valueOf(kikiId));
    }

    public List<Kiki> getKikiBySysId(int KikiSysId){
        List<Kiki> kikiList = kikiMapper.findKikiBySysId(KikiSysId);
        return kikiList;
    }

    public Kiki getKikiByKikiId(String KikiId){
        return kikiMapper.findKikiById(Integer.valueOf(KikiId));
    }
}
