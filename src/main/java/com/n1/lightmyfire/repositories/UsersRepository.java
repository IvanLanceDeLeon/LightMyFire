package com.n1.lightmyfire.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.n1.lightmyfire.models.Users;
@Repository
public interface UsersRepository extends CrudRepository<Users, Long> {
    Users findByEmail(String email);
}
