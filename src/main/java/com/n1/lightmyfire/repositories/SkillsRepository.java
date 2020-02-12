package com.n1.lightmyfire.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.n1.lightmyfire.models.Skills;
@Repository
public interface SkillsRepository extends CrudRepository<Skills,Long> {
	List<Skills> findAll();
}
