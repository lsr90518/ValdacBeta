package com.ValdacBeta.service;

import com.ValdacBeta.dao.UserMapper;
import com.ValdacBeta.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by Lsr on 10/9/14.
 */

@Service
public class UserService {

    @Resource
    UserMapper userMapper;

    @Transactional
    public void getUserById(String UserId) {
        System.out.println("aaaaaa");
        System.out.println(userMapper.findByUserName("a"));
        System.out.println("cccccc");
    }
}
