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
     * ユーザの画像情報をDBに更新 google場合
     * @param user ユーザ
     * @param uploadImageName 画像名
     * @return user 更新後のユーザ
     * */
    public User updateUserProfileImage(User user,String uploadImageName) {
        user.setProfile(uploadImageName);
        userMapper.updateUser(user);
        if(user != null){
            return user;
        } else {
            return null;
        }
    }

    /**
     * ユーザの画像情報をDBに更新　Local場合
     * @param user ユーザ
     * @param uploadImageName 画像名
     * @return user 更新後のユーザ
     * */
    public User updateUserProfileImageToLocal(User user,String uploadImageName) {

        FileChannel ifc = null;
        FileChannel ofcLocal = null;
        FileChannel ofcTomcat = null;
        FileChannel ofcTarget = null;

        String profile=user.getUserid()+".png";
        System.out.println("更新後の画像名:"+profile);
        try {
            System.out.println("ユーザローカルのファイル名："+uploadImageName);
            FileInputStream fis = new FileInputStream("/Users/zhangrui/Desktop/workspace/img/"+uploadImageName);
            ifc = fis.getChannel();
//profileに保存
            File outFileLocal = new File("/Users/zhangrui/Desktop/workspace/ValdacBeta/src/main/webapp/WEB-INF/pages/img/profile/"+profile);
            FileOutputStream fosLocal = new FileOutputStream(outFileLocal);
            ofcLocal = fosLocal.getChannel();
            ifc.transferTo(0, ifc.size(), ofcLocal);

////tomcatに保存
            File outFileTomcat = new File(profile);
            System.out.println(outFileTomcat.getName());
            System.out.println(outFileTomcat.getParent());
            FileOutputStream fosTomcat = new FileOutputStream(outFileTomcat);
            ofcTomcat = fosTomcat.getChannel();
            ifc.transferTo(0, ifc.size(), ofcTomcat);
//targetに保存
            File outFileTarget=new File("/Users/zhangrui/Desktop/workspace/ValdacBeta/target/ValdacBeta/WEB-INF/pages/img/profile/"+profile);
//            System.out.println(outFile.getName());
//            System.out.println(outFile.getParent());
            FileOutputStream fosTarget = new FileOutputStream(outFileTarget);
            ofcTarget = fosTarget.getChannel();
            ifc.transferTo(0, ifc.size(), ofcTarget);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (ifc != null) {
                try {
                    // 入力チャネルを close します。
                    ifc.close();
                } catch (IOException e) {
                }
            }
            if (ofcLocal != null) {
                try {
                    // 出力チャネルを close します。
                    ofcLocal.close();
                } catch (IOException e) {
                }
            }
            if (ofcTarget != null) {
                try {
                    // 出力チャネルを close します。
                    ofcTarget.close();
                } catch (IOException e) {
                }
            }
        }
        user.setProfile(profile);
        userMapper.updateUser(user);
        if(user != null){
            return user;
        } else {
            return null;
        }
    }


}
