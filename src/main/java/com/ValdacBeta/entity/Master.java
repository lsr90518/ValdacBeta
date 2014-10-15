package com.ValdacBeta.entity;

import java.io.Serializable;

/**
 * Created by zhangrui on 2014/10/15.
 */
public class Master implements Serializable {

    /**マスターID*/
    public int MasterId;
    /**マスター種別*/
    public String Type;
    /**各種別の連番コード*/
    public String Code;
    /**略称*/
    public String Ryaku;
    /**名称*/
    public String Name;

    /*** マスターIDの取得と設定*/
    public int getMasterId(){return MasterId;}
    public void setMasterId(int MasterId){
        this.MasterId=MasterId;
    }

    /*** マスター種別の取得と設定*/
    public String getType(){return Type;}
    public void setType(String Type){
        this.Type=Type;
    }

    /*** 各種別の連番コードの取得と設定*/
    public String getCode(){return Code;}
    public void setCode(String Code){
        this.Code=Code;
    }

    /*** 略称の取得と設定*/
    public String getRyaku(){return Ryaku;}
    public void setRyaku(String Ryaku){
        this.Ryaku=Ryaku;
    }

    /*** 名称の取得と設定*/
    public String getName(){return Name;}
    public void setName(String Name){
        this.Name=Name;
    }
}
