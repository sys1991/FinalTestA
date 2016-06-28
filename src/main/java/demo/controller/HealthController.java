package demo.controller;

import demo.model.Health;
import demo.service.HealthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/28.
 */
@Controller
@RequestMapping("/health")
public class HealthController extends BaseController {

    @Autowired
    HealthService healthService;




    @RequestMapping("/queryAll")
    private String queryAll() {
        session.setAttribute("healths",healthService.list());
        return "redirect:/admin/admin.jsp";
    }

    @RequestMapping("/queryToUser")
    private String queryToUser() {
        session.setAttribute("healths",healthService.list());
        return "redirect:/user/user.jsp";
    }

    @RequestMapping("/queryById/{id}")
    private String queryById(@PathVariable("id") Integer id) {
       session.setAttribute("health",healthService.search(id));

        return "redirect:/admin/look.jsp";
    }

    @RequestMapping("/remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        healthService.remove(id);
        return "redirect:/health/queryAll";
    }

    @RequestMapping("/queryToModify/{id}")
    private String queryToModify(@PathVariable("id") Integer id) {
        session.setAttribute("health",healthService.search(id));

        return "redirect:/admin/edit.jsp";
    }

    @RequestMapping("/modify")
    private String modify(Health health) {
        healthService.modify(health);
        return "redirect:/health/queryAll";
    }

    @RequestMapping("/create")
    private String create(Health health){
        healthService.create(health);
        return "redirect:/health/queryAll";
    }

    @RequestMapping("/userQuery")
    private String userQuery(Health health) {
        session.setAttribute("userQuery",healthService.list("health.userQuery",health));
        return "redirect:/user/userQuery.jsp";
    }

}
