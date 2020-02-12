package com.n1.lightmyfire.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.n1.lightmyfire.models.LearnedSkills;
import com.n1.lightmyfire.models.Props;
import com.n1.lightmyfire.models.Skills;
import com.n1.lightmyfire.models.SkillsToLearn;
import com.n1.lightmyfire.models.UserProp;
import com.n1.lightmyfire.repositories.LearnedRepository;
import com.n1.lightmyfire.repositories.LearningRepository;
import com.n1.lightmyfire.repositories.PropsRepository;
import com.n1.lightmyfire.repositories.SkillsRepository;
import com.n1.lightmyfire.repositories.UserPropRepository;
import com.n1.lightmyfire.repositories.UsersRepository;

@Service
public class UserPropService {
	private final PropsRepository propRepository;
	private final UsersRepository userRepository;
	private final UserPropRepository upRepository;
	private final SkillsRepository skillsRepository;
	private final LearnedRepository learnedRepository;
	private final LearningRepository learningRepository;
	public UserPropService(PropsRepository propRepository, UsersRepository userRepository, UserPropRepository upRepository,SkillsRepository skillsRepository,LearnedRepository learnedRepository,LearningRepository learningRepository) {
		this.propRepository = propRepository;
		this.userRepository = userRepository;
		this.upRepository = upRepository;
		this.skillsRepository=skillsRepository;
		this.learnedRepository = learnedRepository;
		this.learningRepository = learningRepository;
	}
	
	public Props createProp(Props p) {
		return this.propRepository.save(p);
	}
	
	public List<Props> allProps(){
		return this.propRepository.findAll();
	}
	
	public Props findProp(Long id) {
        Optional<Props> optionalProp = propRepository.findById(id);
        if(optionalProp.isPresent()) {
            return optionalProp.get();
        } else {
            return null;
        }
	}
	
	public UserProp createUP(UserProp up) {
		return this.upRepository.save(up);
	}
	
	public List<UserProp> UserProps(Long id){
		return upRepository.findPropsByUserId(id);
	}
	
	public List<LearnedSkills> UserSkills(Long id){
		return learnedRepository.findSkillsByUserId(id);
	}
	
	public List<SkillsToLearn> learnSkill(Long id){
		return learningRepository.findSkillsByUserId(id);
	}
	
	public LearnedSkills createLS(LearnedSkills ls) {
		return this.learnedRepository.save(ls);
	}
	
	public SkillsToLearn createSL(SkillsToLearn sl) {
		return this.learningRepository.save(sl);
	}
	
	public void  deleteSL(Long id) {
		 this.learningRepository.deleteById(id);
	}
	
	
	public Skills createSkill(Skills s) {
		return this.skillsRepository.save(s);
	}
	
	public Skills findSkill(Long id) {
        Optional<Skills> optionalSkill = skillsRepository.findById(id);
        if(optionalSkill.isPresent()) {
            return optionalSkill.get();
        } else {
            return null;
        }
	}
	
	
	
	

}
