package demo.dao.impl;

import demo.dao.AdminDao;
import demo.model.Admin;
import org.springframework.stereotype.Repository;

/**
 * Created by sys on 2016/6/27.
 */
@Repository
public class AdminDaoImpl extends GenericDaoImpl<Admin,Integer> implements AdminDao{
}
