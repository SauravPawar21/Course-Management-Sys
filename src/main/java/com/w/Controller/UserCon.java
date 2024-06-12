package com.w.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.w.Modal.Course;
import com.w.Modal.User;
import com.w.Repo.Courseinfo;
import com.w.Repo.Userinfor;

@Controller
public class UserCon {

    @Autowired
    private Userinfor us;

    @Autowired
    private Courseinfo courseInfo;
    
    @GetMapping("/")
    public String home(HttpSession session, Model model) {
        if (session.getAttribute("username") != null) {
            model.addAttribute("username", session.getAttribute("username"));
        }
        return "Home.jsp";
    }

    @PostMapping("/register")
    public String registers(@ModelAttribute User ee) {
        us.save(ee);
        return "Login.jsp";
    }

    @PostMapping("/Login")
    public String login(@RequestParam String username, @RequestParam String password, @RequestParam String role, HttpSession session) {
        User ob = us.findByUsernameAndPasswordAndRole(username, password, role);
        if (ob != null) {
            session.setAttribute("username", username);
            if ("teacher".equals(role)) {
                return "TeachersDashBord.jsp";
            } else if ("student".equals(role)) {
                return "Courses.jsp";
            }
        }
        return "Login.jsp";
    }
    
    @GetMapping("/UserViewCourse")
    public String userViewBooks(Model model) {
        List<Course> courseli = courseInfo.findAll();
        model.addAttribute("uscs", courseli);
        return "Courses.jsp";
    }
}
