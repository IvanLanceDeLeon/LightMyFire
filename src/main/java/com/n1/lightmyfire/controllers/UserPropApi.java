package com.n1.lightmyfire.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.n1.lightmyfire.models.Props;
import com.n1.lightmyfire.models.Skills;
import com.n1.lightmyfire.services.UserPropService;
@RestController
public class UserPropApi {
	private final UserPropService upService;
		public UserPropApi(UserPropService upService) {
			this.upService = upService;
		}
		
		@RequestMapping("/api/props")
		public List<Props> allProps(){
			return upService.allProps();
		}
	
		@RequestMapping(value = "/api/props", method = RequestMethod.POST)
			public Props createProp(@RequestParam(value = "Name")String name, @RequestParam(value = "Description") String description) {
			Props p = new Props();
			p.setProp_name(name);
			p.setDescription(description);
			return upService.createProp(p);
		}
		@PostMapping("/api/skills/{id}")
			public Skills createSkills(@RequestParam(value = "Name") String name, 
					@RequestParam(value = "description") String desc, 
					@RequestParam(value = "video") String video, 
					@RequestParam(value = "level") String level,
					@PathVariable("id") Long id) {
			Skills s = new Skills();
			s.setSkill_name(name);;
			s.setDescription(desc);
			s.setLevel(level);
			s.setVideo(video);
			Props p = upService.findProp(id);
			s.setProp(p);
			return upService.createSkill(s);
		}}


