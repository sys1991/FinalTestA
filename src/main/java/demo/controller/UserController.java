package demo.controller;

import demo.model.User;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sys on 2016/6/27.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    private String login(User user) {
        user = userService.login(user);
        if (user != null) {
            session.setAttribute("user", user);
            if (user.getRole().equals("a")) {
                return "redirect:/health/queryAll";
            } else {
                return "redirect:/health/queryToUser";
            }
        } else {
            request.setAttribute("message", "用户名和密码错误");
            return "/index";
        }
    }

    @RequestMapping("/register")
    private String register(User user){
        userService.create(user);

        return "/index";
    }

    @RequestMapping("/logout")
    private String logout() {
        session.invalidate();
        return "/admin/index";
    }
}
