package com.n1.lightmyfire.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.n1.lightmyfire.models.SkillsToLearn;
@Repository
public interface LearningRepository extends CrudRepository<SkillsToLearn,Long>{
	List<SkillsToLearn> findSkillsByUserId(Long id);

}
