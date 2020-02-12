package com.n1.lightmyfire.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.n1.lightmyfire.models.LearnedSkills;

@Repository
public interface LearnedRepository extends CrudRepository<LearnedSkills,Long> {
List<LearnedSkills> findSkillsByUserId(Long id);
}
