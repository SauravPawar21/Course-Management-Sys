package com.w.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.w.Modal.Course;
import com.w.Repo.Courseinfo;

@Controller
@RequestMapping("/courses")
public class CourseCon {

    @Autowired
    private Courseinfo courseInfo;

    @PostMapping("/addCourse")
    public String addCourse(@ModelAttribute Course b, @RequestParam("imageUrl") String imageUrl ) {
        b.setImageUrl(imageUrl);
        courseInfo.save(b);
        return "redirect:/viewCourse";
    }

    @GetMapping("/viewCourse")
    public String fetch(Model model) {
        List<Course> CourseList = courseInfo.findAll();
        model.addAttribute("CourseList", CourseList);
        return "ManageCourses.jsp";
    }

    @RequestMapping("delete/{id}")
    public String deleteuser(@PathVariable int id) {
    	courseInfo.deleteById(id);
        return "redirect:/viewCourse";
    }

    @RequestMapping("/{id}")
    public String edit(@PathVariable int id, Model model) {
    	Course Course = courseInfo.findById(id);
        model.addAttribute("Course", Course);
        return "edit.jsp";
    }

    @RequestMapping("/edit/{id}")
    public String edituser(@PathVariable int id,@ModelAttribute Course b) {
    	Course ob=courseInfo.findById(id);
    	if(ob!=null) {
    		ob.setCourseName(b.getCourseName());
    		ob.setPrice(b.getPrice());
    		ob.setCourseDesc(b.getCourseDesc());
    		
    		
    		courseInfo.save(ob);
    	}
    	return "redirect:/viewCourse";
    }
}
