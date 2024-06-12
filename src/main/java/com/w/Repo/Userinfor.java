package com.w.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.w.Modal.User;
import java.util.List;


@Repository
public interface Userinfor extends JpaRepository<User, Integer>{
		public User  findByUsernameAndPasswordAndRole(String username,String password,String role);
}
