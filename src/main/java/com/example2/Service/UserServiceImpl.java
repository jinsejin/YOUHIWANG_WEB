package com.example2.Service;

import com.example2.DAO.UserDAO;
import com.example2.bean.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {

    @Autowired
    UserDAO userDAO;
    public UserVO getUser(UserVO vo) {
        return userDAO.getUser(vo);
    }
}
