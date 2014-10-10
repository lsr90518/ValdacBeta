package com.ValdacBeta.dao;

import com.ValdacBeta.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Lsr on 10/9/14.
 */
public interface UserMapper {

    @Select("select * from User where username=#{username}")
    public User findByUserName(String username);
}
