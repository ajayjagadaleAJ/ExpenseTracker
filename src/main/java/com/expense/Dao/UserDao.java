package com.expense.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expense.Entity.Users;
import com.expense.Repository.UserRepository;
import com.expense.Service.UserService;

@Service
public class UserDao implements UserService {

	@Autowired
	UserRepository ur;
	
	@Override
	public void register(Users u1) {
		ur.save(u1);
		
	}


	@Override
	public Users findByUsernameAndPassword(String username, String password) {
		return ur.findByUsernameAndPassword(username, password);
	}
	
	 

	 
	
	

}
