package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Plan;
import pl.coderslab.model.User;


@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping(value = {"/desktop"}, method = RequestMethod.GET)
    public String user() {
        return "user/desktop";
    }


}
