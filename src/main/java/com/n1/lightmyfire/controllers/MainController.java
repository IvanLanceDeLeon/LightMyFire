package com.n1.lightmyfire.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.n1.lightmyfire.models.LearnedSkills;
import com.n1.lightmyfire.models.Props;
import com.n1.lightmyfire.models.Skills;
import com.n1.lightmyfire.models.SkillsToLearn;
import com.n1.lightmyfire.models.UserProp;
import com.n1.lightmyfire.models.Users;
import com.n1.lightmyfire.services.UserPropService;
import com.n1.lightmyfire.services.UserService;
import com.n1.lightmyfire.validator.UserValidator;

@Controller
public class MainController {
	private final UserService userService;
	private final UserPropService upService;
	private final UserValidator userValidator;
		public MainController(UserService userService, UserPropService upService, UserValidator userValidator) {
			this.userService = userService;
			this.upService = upService;
			this.userValidator = userValidator;
		}
		
		
	    @RequestMapping("/")
    	public String loginreg(@ModelAttribute("user") Users user, HttpSession session) {
	    	if(session.getAttribute("Email")!= null) {
	    		return "redirect:/home";
	    	}
    	return "logreg.jsp";
    }
	    
	    @RequestMapping(value="/registration", method=RequestMethod.POST)
	    public String registerUser(@Valid @ModelAttribute("user") Users user, BindingResult result, HttpSession session) {
	    	userValidator.validate(user,result);
	    	if(result.hasErrors()) {
	    		return "logreg.jsp";
	    	}else {
	    		userService.registerUser(user);
	    		session.setAttribute("Email", user.getId());
	    		return "redirect:/choose";
	    	}
	    }
	    @RequestMapping(value="/login", method=RequestMethod.POST)
	    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session, Users login) {
	    	model.addAttribute("User", login);
	    	if(userService.authenticateUser(email, password)) {
	    		Users user = userService.findByEmail(email);
	    		session.setAttribute("Email", user.getId());
	    		return "redirect:/home";
	    	}
	    	else
	    		model.addAttribute("error", "Invalid Username or Password");

	    		return "logreg.jsp";
	        // if the user is authenticated, save their user id in session
	        // else, add error messages and return the login page
	    }
	    
	    @RequestMapping("/logout")
	    public String logout(HttpSession session) {
	    	session.invalidate();
	    	
	    	return "redirect:/";

	    }
	    
	    @RequestMapping("/choose")
	    	public String chooseProp(@ModelAttribute("userprop") UserProp userprop,Model model, HttpSession session) {
	    	Long UserId = (Long) session.getAttribute("Email");
	    	Users user = userService.findUserById(UserId);
	    	List<Props> allProps = this.upService.allProps();
	    	model.addAttribute("props", allProps);
	    	model.addAttribute("User", user);
	    	return "choose.jsp";
	    }
	    
	    @PostMapping("/choose")
	    public String addUserProp(@Valid @ModelAttribute("userprop") UserProp userProp, BindingResult result) {
	    	if(result.hasErrors()) {
	    		System.out.println(result);
	    		return "choose.jsp";
	    	}else {
	    		this.upService.createUP(userProp);
	    		return "redirect:/home";
	    	}
	    }
	    
	    @RequestMapping("/home")
	    	public String dashboard(HttpSession session, Model model) {
	    	Users user = userService.findUserById((Long) session.getAttribute("Email"));
	    	List<UserProp> props = upService.UserProps(user.getId());
	    	List<LearnedSkills> skills = upService.UserSkills(user.getId());
	    	List<SkillsToLearn> todo = upService.learnSkill(user.getId());
	    	model.addAttribute("User", user);
	    	model.addAttribute("Props", props);
	    	model.addAttribute("Skills", skills);
	    	model.addAttribute("todo", todo);
	    	for(int i = 0; i < todo.size();i++) {
	    		System.out.println(todo.get(i).getSkill().getSkill_name());
	    	}
	    	return "home.jsp";
	    }
	    
	    @RequestMapping("/tutorials/{prop_id}")
	    	public String prop_tutorials(Model model,@PathVariable("prop_id") Long prop_id) {
	    	
	    	Props p = upService.findProp(prop_id);
	    	List<Skills> skills = p.getSkills();
	    	model.addAttribute("Prop",p);
	    	model.addAttribute("Skills", skills);
	    	
	    	return "tutorials.jsp";
	    }
	    
	    @RequestMapping("/tutorials")
	    	public String tutorials_dashboard() {
	    	return "tutorialsMenu.jsp";
	    }
	    
	    @RequestMapping("/tutorials/{prop_id}/{skill_id}")
	    	public String skillVideo(@PathVariable("prop_id") Long id,
	    			@PathVariable("skill_id") Long skillId, 
	    			Model model,
	    			@ModelAttribute("learnSkill") LearnedSkills learnSkill,
	    			@ModelAttribute("skillToLearn") SkillsToLearn skillToLearn,
	    			HttpSession session ) {
	    	Long UserId = (Long) session.getAttribute("Email");
	    	Users user = userService.findUserById(UserId);
	    	Props p = upService.findProp(id);
	    	Skills s = upService.findSkill(skillId);
	    	model.addAttribute("User", user);
	    	model.addAttribute("Skill",s);
	    	model.addAttribute("Prop",p);
	    	return "skillsPage.jsp";
	    }
	    
	    @PostMapping("/learn")
	    	public String addLearned(@Valid @ModelAttribute("learnSkill") LearnedSkills learnSkill,BindingResult result,HttpSession session) {
	    	if(result.hasErrors()) {
	    		return "skillsPage.jsp";
	    	}else {
	    		Users user = userService.findUserById((Long) session.getAttribute("Email"));
		    	List<SkillsToLearn> todo = upService.learnSkill(user.getId());
		    	for(int i = 0; i < todo.size();i++) {
		    		if(todo.get(i).getSkill().getSkill_name().equals(learnSkill.getSkill().getSkill_name())){
		    			upService.deleteSL(todo.get(i).getId());
		    		}
		    	}
	    		this.upService.createLS(learnSkill);
	    		return "redirect:/home";
	    	}

	    	
	    }
	    
    	
    @PostMapping("todo")
    	public String addToDo(@Valid @ModelAttribute("skillToLearn") SkillsToLearn skillToLearn, BindingResult result) {
    	if(result.hasErrors()) {
    		return "skillsPage.jsp";
    	} else {

    		this.upService.createSL(skillToLearn);
    		return "redirect:/home";
    	}
    }
	
    
    @RequestMapping("/about")
    public String aboutPage(){
    	
    	return "about.jsp";
    }

}
