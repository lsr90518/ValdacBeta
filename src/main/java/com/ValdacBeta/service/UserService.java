package com.ValdacBeta.service;

import com.ValdacBeta.dao.UserMapper;
import com.ValdacBeta.entity.User;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
     * @return user 更新後のユーザ
     * */
    public User updateUserProfileImageToLocal(User user,HttpSession session,MultipartFile multipartFile ) {
        String profile=user.getUserid()+".png";
        System.out.println("更新後の画像名:"+profile);
        String PathTarget=session.getServletContext().getRealPath("");

        Integer pos= PathTarget.indexOf("target");
        String PathSrc=PathTarget.substring(0,pos);

        System.out.println("path1:"+PathTarget);
        System.out.println("path3:"+PathSrc);

        try {
//profileに保存
            File outFileLocal = new File(PathSrc+"src/main/webapp/WEB-INF/pages/img/profile/"+profile);
            FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),outFileLocal);

//////tomcatに保存
//            File outFileTomcat = new File(profile);
//            System.out.println(outFileTomcat.getName());
//            System.out.println(outFileTomcat.getParent());
//            FileOutputStream fosTomcat = new FileOutputStream(outFileTomcat);
//            ofcTomcat = fosTomcat.getChannel();
////            ifc.transferTo(0, ifc.size(), ofcTomcat);
//            multipartFile.transferTo(outFileTomcat);
////targetに保存
            File outFileTarget=new File(PathTarget+"/WEB-INF/pages/img/profile/"+profile);
            FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),outFileTarget);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
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
