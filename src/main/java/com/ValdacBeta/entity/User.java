package com.ValdacBeta.entity;

import java.io.Serializable;

/**
 * Created by Lsr on 10/9/14.
 */

public class User implements Serializable {


    public int userid;

    public int getUserid() {
        return userid;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public String getKengen() {
        return kengen;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setKengen(String kengen) {
        this.kengen = kengen;
    }

    public String password;
    public String username;
    public String kengen;
}
