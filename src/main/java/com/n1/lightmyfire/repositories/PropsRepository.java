package com.n1.lightmyfire.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.n1.lightmyfire.models.Props;
@Repository
public interface PropsRepository extends CrudRepository<Props, Long> {
List<Props> findAll();
}
