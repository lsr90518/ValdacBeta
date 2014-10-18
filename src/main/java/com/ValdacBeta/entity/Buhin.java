package com.ValdacBeta.entity;

import com.ValdacBeta.dto.BuhinForm;

/**
 * Created by Lsr on 10/18/14.
 */
public class Buhin {
    public int buhinId;
    public int kikiSysId;
    public int kikiId;
    public String kikiBunrui;
    public String kikiBunruiSeq;
    public String buhinKbn;
    public String BuhinSeq;
    public String asbKbn;
    public String buhinzuBikou;
    public String buhinMei;
    public String hyojunSiyou;
    public String siyouKasyo;
    public String makerRyaku;
    public String sizaiName;
    public String maker;
    public String sunpou;
    public String hinban;
    public String bikou;
    public String suryo;
    public String imageId;
    public String trkDate;
    public String updDate;//hinban

    public void makeupValueByForm(BuhinForm buhinForm){
        setKikiId(buhinForm.getKikiId());
        setKikiSysId(buhinForm.getKikiSysId());
        setKikiBunrui(buhinForm.getKikiBunrui());
        setKikiBunruiSeq(buhinForm.getKikiBunruiSeq());
        setBuhinKbn(buhinForm.getBuhinKbn());
        setBuhinSeq(buhinForm.getBuhinSeq());
        setAsbKbn(buhinForm.getAsbKbn());
        setBuhinzuBikou(buhinForm.getBuhinzuBikou());
        setBuhinMei(buhinForm.getBuhinMei());
        setHyojunSiyou(buhinForm.getHyojunSiyou());
        setMakerRyaku(buhinForm.getMakerRyaku());
        setMaker(buhinForm.getMaker());
        setSunpou(buhinForm.getSunpou());
        setBikou(buhinForm.getBikou());
        setSuryo(buhinForm.getSuryo());
        setImageId(buhinForm.getImageId());
        setTrkDate(buhinForm.getTrkDate());
        setUpdDate(buhinForm.getUpdDate());
        setHinban(buhinForm.getHinban());
    }

    public int getBuhinId() {
        return buhinId;
    }

    public void setBuhinId(int buhinId) {
        this.buhinId = buhinId;
    }

    public int getKikiSysId() {
        return kikiSysId;
    }

    public void setKikiSysId(int kikiSysId) {
        this.kikiSysId = kikiSysId;
    }

    public int getKikiId() {
        return kikiId;
    }

    public void setKikiId(int kikiId) {
        this.kikiId = kikiId;
    }

    public String getKikiBunrui() {
        return kikiBunrui;
    }

    public void setKikiBunrui(String kikiBunrui) {
        this.kikiBunrui = kikiBunrui;
    }

    public String getKikiBunruiSeq() {
        return kikiBunruiSeq;
    }

    public void setKikiBunruiSeq(String kikiBunruiSeq) {
        this.kikiBunruiSeq = kikiBunruiSeq;
    }

    public String getBuhinKbn() {
        return buhinKbn;
    }

    public void setBuhinKbn(String buhinKbn) {
        this.buhinKbn = buhinKbn;
    }

    public String getBuhinSeq() {
        return BuhinSeq;
    }

    public void setBuhinSeq(String buhinSeq) {
        BuhinSeq = buhinSeq;
    }

    public String getSiyouKasyo() {
        return siyouKasyo;
    }

    public void setSiyouKasyo(String siyouKasyo) {
        this.siyouKasyo = siyouKasyo;
    }



    public String getAsbKbn() {
        return asbKbn;
    }

    public void setAsbKbn(String asbKbn) {
        this.asbKbn = asbKbn;
    }

    public String getBuhinzuBikou() {
        return buhinzuBikou;
    }

    public void setBuhinzuBikou(String buhinzuBikou) {
        this.buhinzuBikou = buhinzuBikou;
    }

    public String getBuhinMei() {
        return buhinMei;
    }

    public void setBuhinMei(String buhinMei) {
        this.buhinMei = buhinMei;
    }

    public String getHyojunSiyou() {
        return hyojunSiyou;
    }

    public void setHyojunSiyou(String hyojunSiyou) {
        this.hyojunSiyou = hyojunSiyou;
    }

    public String getMakerRyaku() {
        return makerRyaku;
    }

    public void setMakerRyaku(String makerRyaku) {
        this.makerRyaku = makerRyaku;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getSunpou() {
        return sunpou;
    }

    public void setSunpou(String sunpou) {
        this.sunpou = sunpou;
    }

    public String getBikou() {
        return bikou;
    }

    public void setBikou(String bikou) {
        this.bikou = bikou;
    }

    public String getSuryo() {
        return suryo;
    }

    public void setSuryo(String suryo) {
        this.suryo = suryo;
    }

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public String getTrkDate() {
        return trkDate;
    }

    public void setTrkDate(String trkDate) {
        this.trkDate = trkDate;
    }

    public String getUpdDate() {
        return updDate;
    }

    public void setUpdDate(String updDate) {
        this.updDate = updDate;
    }

    public String getSizaiName() {
        return sizaiName;
    }

    public void setSizaiName(String sizaiName) {
        this.sizaiName = sizaiName;
    }

    public String getHinban() {
        return hinban;
    }

    public void setHinban(String hinban) {
        this.hinban = hinban;
    }

}
