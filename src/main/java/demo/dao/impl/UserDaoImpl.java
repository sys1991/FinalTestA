package demo.dao.impl;

import demo.dao.UserDao;
import demo.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by sys on 2016/6/27.
 */
@Repository
public class UserDaoImpl extends GenericDaoImpl<User,Integer> implements UserDao{
}
