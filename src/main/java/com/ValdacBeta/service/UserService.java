package com.ValdacBeta.service;

<<<<<<< HEAD
        import com.ValdacBeta.dao.UserMapper;
        import com.ValdacBeta.entity.User;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;
        import org.springframework.transaction.annotation.Transactional;
=======
import com.ValdacBeta.dao.UserMapper;
import com.ValdacBeta.entity.User;
import org.springframework.stereotype.Service;
>>>>>>> 107ae1184d386ccf361b0940b48c578e37b95aef

        import javax.annotation.Resource;

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
}
