package demo.service;

import demo.model.Admin;

/**
 * Created by sys on 2016/6/27.
 */
public interface AdminService extends GenericService<Admin,Integer> {
    Admin login(Admin admin);
}
