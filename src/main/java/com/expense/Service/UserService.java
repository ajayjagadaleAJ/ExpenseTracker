package com.expense.Service;

import com.expense.Entity.Users;

public interface UserService {
	
	public void register(Users u1);
	
//	public Users findByUsername(String username);
	

	public Users findByUsernameAndPassword(String username, String password);

	
	
	

}
