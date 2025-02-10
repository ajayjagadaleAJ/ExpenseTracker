package com.expense.Service;

import java.util.List;

import com.expense.Entity.Expense;

public interface ExpenseService {
	
	public void saveExpense(Expense e1);
	
	public List<Expense> getAllInfo();
	
	public void deleteExpense(int id);
	 
	public Expense getSingleExpense(int id);
	
	
	
	
	

}
