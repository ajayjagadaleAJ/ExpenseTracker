package com.expense.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expense.Entity.Expense;
import com.expense.Repository.ExpenseRepository;
import com.expense.Service.ExpenseService;

@Service
public class ExpenseDao implements ExpenseService {
	
	@Autowired 
	ExpenseRepository er;

	@Override
	public void saveExpense(Expense e1) {
		 er.save(e1);
		
	}

	@Override
	public List<Expense> getAllInfo() {
	 
		return er.findAll();
	}

	@Override
	public void deleteExpense(int id) {

		  er.deleteById(id);
		
	}

	@Override
	public Expense getSingleExpense(int id) {
		
		return er.getById(id);
	}

	 

	 
	
	

}
