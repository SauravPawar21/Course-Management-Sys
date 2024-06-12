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

import com.w.Modal.Buy;
import com.w.Repo.Buyinfo;

@Controller
public class BuyCon {
	@Autowired
	private Buyinfo Byin;
	
	@GetMapping("/viewCart")
    public String viewCart(Model model) {
        List<Buy> cartCourses = Byin.findAll();
        model.addAttribute("cartCourses", cartCourses);
        return "BuyCourses.jsp";
    }

    @PostMapping("/addToCart")
    public String addToCart(@ModelAttribute Buy b) {
    	Byin.save(b);
        return "redirect:/viewCart";
    }
    
    @RequestMapping("del/{id}")
    public String deleteCartItem(@PathVariable int id) {
    	Byin.deleteById(id);
        return "redirect:/viewCart";
    } 
}
