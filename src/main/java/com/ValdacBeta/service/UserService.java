package com.ValdacBeta.service;

import com.ValdacBeta.dao.UserMapper;
import com.ValdacBeta.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.*;
import java.nio.channels.FileChannel;
import java.util.Date;

/**
 * Created by Lsr on 10/9/14.
 */

@Service
public class UserService {

    @Resource
    UserMapper userMapper;

    public User loginByUserid(String userid,String password) {

        User user = userMapper.findByUserId(userid);

        if(password.equals(user.getPassword())){
            return user;
        } else {
            return null;
        }

    }

    public User getUserProfile(String userid) {

        User user = userMapper.findByUserId(userid);

        if(user != null){
            return user;
        } else {
            return null;
        }

    }

    /**
     * ユーザprofile情報をDBに更新
     * @param user ユーザ
     * @param username    ユーザ名
     * @param password　  パスワード
     * @param department　部署
     * @return user 更新後のユーザ
     * */
    public User updateUser(User user,String username,String password,String department) {

        user.setPassword(password);
        user.setDepartment(department);
        user.setUsername(username);

        userMapper.updateUser(user);
//        User user = userMapper.findByUserId(userId);
        if(user != null){
            return user;
        } else {
            return null;
        }

    }

    /**
     * ユーザの画像情報をDBに更新
     * @param user ユーザ
     * @param uploadImageName 画像名
     * @return user 更新後のユーザ
     * */
    public User updateUserProfileImage(User user,String uploadImageName) {

//        FileChannel ifc = null;
//        FileChannel ofc = null;
//        String profile=user.getUserid()+"_"+new Date().getTime()+".png";
////        System.out.println("更新後の画像名:"+profile);
//        try {
////            System.out.println("ユーザローカルのファイル名："+uploadImageName);
//            FileInputStream fis = new FileInputStream("/Users/zhangrui/Desktop/workspace/img/"+uploadImageName);
//            ifc = fis.getChannel();
//
//            File outFile = new File("/Users/zhangrui/Desktop/workspace/ValdacBeta/src/main/webapp/WEB-INF/pages/img/profile/"+profile);
//
////            System.out.println(outFile.getName());
////            System.out.println(outFile.getParent());
//
//            FileOutputStream fos = new FileOutputStream(outFile);
//            ofc = fos.getChannel();
//
//            ifc.transferTo(0, ifc.size(), ofc);
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        } finally {
//            if (ifc != null) {
//                try {
//                    // 入力チャネルを close します。
//                    ifc.close();
//                } catch (IOException e) {
//                }
//            }
//            if (ofc != null) {
//                try {
//                    // 出力チャネルを close します。
//                    ofc.close();
//                } catch (IOException e) {
//                }
//            }
//        }
        user.setProfile(uploadImageName);
        userMapper.updateUser(user);
        if(user != null){
            return user;
        } else {
            return null;
        }
    }


}
