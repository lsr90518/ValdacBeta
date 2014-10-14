package com.ValdacBeta.entity;

import com.ValdacBeta.dto.ValveForm;

/**
 * Created by Lsr on 10/14/14.
 */
public class Valve {
    public int KikiSysId;
    public String kCode;
    public String KikiSysSeq;
    public String VNo;
    public String VNoSub;
    public String BenMeisyo;
    public String KikiSysMei;
    public String SetSetubi;
    public String SetKiki;
    public String SetBasyo;
    public String Keitou;
    public String Houki;
    public String KeisikiRyaku;
    public String Keisiki;
    public String SousaRyaku;
    public String Sousa;
    public String ClassRyaku;
    public String ClassType;
    public String YobikeiRyaku;
    public String Yobikei;
    public String SzHouRyaku;
    public String SzHou;
    public String SzKikaku;
    public String ZaisituRyaku;
    public String Zaisitu;
    public String AturyokuMax;
    public String Tani;
    public String OndoMax;
    public String RyutaiRyaku;
    public String Ryutai;
    public String ICS;
    public String Futai;
    public String TrkDate;
    public String UpdDate;

    public void makeupValveByForm(ValveForm valveForm){
        setVNo(valveForm.getVNo());
        setVNoSub(valveForm.getVNoSub());
        setBenMeisyo(valveForm.getBenMeisyo());
        setKikiSysMei(valveForm.getKikiSysMei());
        setSetSetubi(valveForm.getSetSetubi());
        setSetKiki(valveForm.getSetKiki());
        setSetBasyo(valveForm.getSetBasyo());
        setKeitou(valveForm.getKeitou());
        setHouki(valveForm.getHouki());//
        setKeisikiRyaku(valveForm.getKeisikiRyaku());
        setKeisiki(valveForm.getKeisiki());
        setSousaRyaku(valveForm.getSousaRyaku());
        setSousa(valveForm.getSousa());
        setClassRyaku(valveForm.getClassRyaku());
        setClassType(valveForm.getClassType());
        setYobikei(valveForm.getYobikei());
        setYobikeiRyaku(valveForm.getYobikeiRyaku());
        setSzHou(valveForm.getSzHou());
        setSzHouRyaku(valveForm.getSzHouRyaku());
        setSzKikaku(valveForm.getSzKikaku());
        setZaisitu(valveForm.getZaisitu());
        setZaisituRyaku(valveForm.getZaisituRyaku());
        setAturyokuMax(valveForm.getAturyokuMax());
        setTani(valveForm.getTani());
        setOndoMax(valveForm.getOndoMax());
        setRyutai(valveForm.getRyutai());
        setRyutaiRyaku(valveForm.getRyutaiRyaku());
        setICS(valveForm.getICS());
        setFutai(valveForm.getFutai());
    }

    public int getKikiSysId() {
        return KikiSysId;
    }

    public void setKikiSysId(int kikiSysId) {
        KikiSysId = kikiSysId;
    }

    public String getkCode() {
        return kCode;
    }

    public void setkCode(String kCode) {
        this.kCode = kCode;
    }

    public String getKikiSysSeq() {
        return KikiSysSeq;
    }

    public void setKikiSysSeq(String kikiSysSeq) {
        KikiSysSeq = kikiSysSeq;
    }

    public String getVNo() {
        return VNo;
    }

    public void setVNo(String VNo) {
        this.VNo = VNo;
    }

    public String getVNoSub() {
        return VNoSub;
    }

    public void setVNoSub(String VNoSub) {
        this.VNoSub = VNoSub;
    }

    public String getBenMeisyo() {
        return BenMeisyo;
    }

    public void setBenMeisyo(String benMeisyo) {
        BenMeisyo = benMeisyo;
    }

    public String getKikiSysMei() {
        return KikiSysMei;
    }

    public void setKikiSysMei(String kikiSysMei) {
        KikiSysMei = kikiSysMei;
    }

    public String getSetSetubi() {
        return SetSetubi;
    }

    public void setSetSetubi(String setSetubi) {
        SetSetubi = setSetubi;
    }

    public String getSetKiki() {
        return SetKiki;
    }

    public void setSetKiki(String setKiki) {
        SetKiki = setKiki;
    }

    public String getSetBasyo() {
        return SetBasyo;
    }

    public void setSetBasyo(String setBasyo) {
        SetBasyo = setBasyo;
    }

    public String getKeitou() {
        return Keitou;
    }

    public void setKeitou(String keitou) {
        Keitou = keitou;
    }

    public String getHouki() {
        return Houki;
    }

    public void setHouki(String houki) {
        Houki = houki;
    }

    public String getKeisikiRyaku() {
        return KeisikiRyaku;
    }

    public void setKeisikiRyaku(String keisikiRyaku) {
        KeisikiRyaku = keisikiRyaku;
    }

    public String getKeisiki() {
        return Keisiki;
    }

    public void setKeisiki(String keisiki) {
        Keisiki = keisiki;
    }

    public String getSousaRyaku() {
        return SousaRyaku;
    }

    public void setSousaRyaku(String sousaRyaku) {
        SousaRyaku = sousaRyaku;
    }

    public String getSousa() {
        return Sousa;
    }

    public void setSousa(String sousa) {
        Sousa = sousa;
    }

    public String getClassRyaku() {
        return ClassRyaku;
    }

    public void setClassRyaku(String classRyaku) {
        ClassRyaku = classRyaku;
    }

    public String getClassType() {
        return ClassType;
    }

    public void setClassType(String aClass) {
        ClassType = aClass;
    }

    public String getYobikeiRyaku() {
        return YobikeiRyaku;
    }

    public void setYobikeiRyaku(String yobikeiRyaku) {
        YobikeiRyaku = yobikeiRyaku;
    }

    public String getYobikei() {
        return Yobikei;
    }

    public void setYobikei(String yobikei) {
        Yobikei = yobikei;
    }

    public String getSzHouRyaku() {
        return SzHouRyaku;
    }

    public void setSzHouRyaku(String szHouRyaku) {
        SzHouRyaku = szHouRyaku;
    }

    public String getSzHou() {
        return SzHou;
    }

    public void setSzHou(String szHou) {
        SzHou = szHou;
    }

    public String getSzKikaku() {
        return SzKikaku;
    }

    public void setSzKikaku(String szKikaku) {
        SzKikaku = szKikaku;
    }

    public String getZaisituRyaku() {
        return ZaisituRyaku;
    }

    public void setZaisituRyaku(String zaisituRyaku) {
        ZaisituRyaku = zaisituRyaku;
    }

    public String getZaisitu() {
        return Zaisitu;
    }

    public void setZaisitu(String zaisitu) {
        Zaisitu = zaisitu;
    }

    public String getAturyokuMax() {
        return AturyokuMax;
    }

    public void setAturyokuMax(String aturyokuMax) {
        AturyokuMax = aturyokuMax;
    }

    public String getTani() {
        return Tani;
    }

    public void setTani(String tani) {
        Tani = tani;
    }

    public String getOndoMax() {
        return OndoMax;
    }

    public void setOndoMax(String ondoMax) {
        OndoMax = ondoMax;
    }

    public String getRyutaiRyaku() {
        return RyutaiRyaku;
    }

    public void setRyutaiRyaku(String ryutaiRyaku) {
        RyutaiRyaku = ryutaiRyaku;
    }

    public String getRyutai() {
        return Ryutai;
    }

    public void setRyutai(String ryutai) {
        Ryutai = ryutai;
    }

    public String getICS() {
        return ICS;
    }

    public void setICS(String ICS) {
        this.ICS = ICS;
    }

    public String getFutai() {
        return Futai;
    }

    public void setFutai(String futai) {
        Futai = futai;
    }

    public String getTrkDate() {
        return TrkDate;
    }

    public void setTrkDate(String trkDate) {
        TrkDate = trkDate;
    }

    public String getUpdDate() {
        return UpdDate;
    }

    public void setUpdDate(String updDate) {
        UpdDate = updDate;
    }
}
