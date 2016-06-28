package demo.service.impl;

import demo.dao.GenericDao;
import demo.dao.UserDao;
import demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sys on 2016/6/27.
 */
@Service
public class UserServiceImpl extends GenericServiceImpl<User, Integer> implements demo.service.UserService {

    @Override
    @Autowired
    @Qualifier("userDaoImpl")
    void setGenericDao(GenericDao<User, Integer> genericDao) {
        super.genericDao = genericDao;
    }


    @Override
    public User login(User user) {
        UserDao userDao = (UserDao) super.genericDao;
        List<User> users = userDao.list("user.login",user);
        if (users.size() > 0) {
            user = users.get(0);

            user.setPassword(null);

            return user;
        } else {

            return null;
        }


    }
}
