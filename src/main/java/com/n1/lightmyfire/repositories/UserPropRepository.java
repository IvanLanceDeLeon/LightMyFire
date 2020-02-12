package com.n1.lightmyfire.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.n1.lightmyfire.models.Props;
import com.n1.lightmyfire.models.UserProp;
@Repository
public interface UserPropRepository extends CrudRepository<UserProp,Long> {
List<UserProp> findPropsByUserId(Long id);
}
