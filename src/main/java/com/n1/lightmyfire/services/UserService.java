package com.n1.lightmyfire.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.n1.lightmyfire.models.Users;
import com.n1.lightmyfire.repositories.UsersRepository;
@Service
public class UserService {
    private final UsersRepository userRepository;
    
    public UserService(UsersRepository userRepository) {
        this.userRepository = userRepository;
    }
    
    // register user and hash their password
    public Users registerUser(Users user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepository.save(user);
    }
    
    // find user by email
    public Users findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    
    // find user by id
    public Users findUserById(Long id) {
    	Optional<Users> u = userRepository.findById(id);
    	
    	if(u.isPresent()) {
            return u.get();
    	} else {
    	    return null;
    	}
    }
    
    // authenticate user
    public boolean authenticateUser(String email, String password) {
        // first find the user by email
        Users user = userRepository.findByEmail(email);
        // if we can't find it by email, return false
        if(user == null) {
            return false;
        } else {
            // if the passwords match, return true, else, return false
            if(BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }
}

