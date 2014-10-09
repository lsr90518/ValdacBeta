package com.ValdacBeta.entity;

import java.io.Serializable;

/**
 * Created by Lsr on 10/9/14.
 */

public class User implements Serializable {
    public String getUserId() {
        return UserId;
    }

    public String getPassword() {
        return Password;
    }

    public String getUserName() {
        return UserName;
    }

    public String getKengen() {
        return Kengen;
    }

    public String UserId;

    public void setUserId(String userId) {
        UserId = userId;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public void setKengen(String kengen) {
        Kengen = kengen;
    }

    public String Password;
    public String UserName;
    public String Kengen;
}
