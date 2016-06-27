package demo.controller;

import demo.model.Admin;
import demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sys on 2016/6/27.
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {
    @Autowired
    AdminService adminService;

    @RequestMapping("/login")
    private String login(Admin admin) {

        admin = adminService.login(admin);
        if (admin != null) {

            session.setAttribute("admin", admin);
            return "redirect:/admin/admin.jsp";
        } else {
            request.setAttribute("message","用户名和密码错误");
            return "/admin/index";

        }

    }
    @RequestMapping("/logout")
    private String logout(){
        session.invalidate();
        return "/admin/index";
    }
}
