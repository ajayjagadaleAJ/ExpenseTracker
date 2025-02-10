package com.expense.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.expense.Entity.Users;

@Repository
public interface UserRepository extends JpaRepository<Users, Integer> {
	
//	public Users findbyUsername(String username);

	public Users findByUsernameAndPassword(String username,String password); 

}
