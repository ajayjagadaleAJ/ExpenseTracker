package com.expense.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.expense.Entity.Expense;

@Repository
public interface ExpenseRepository extends JpaRepository<Expense, Integer> {

}
