package com.expense.Entity;

 
 



import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Expense {
	
	 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int id;
	private String expensename;
	private Double amount;
	private String date;
	private String description;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getExpensename() {
		return expensename;
	}
	public void setExpensename(String expensename) {
		this.expensename = expensename;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Expense [id=" + id + ", expensename=" + expensename + ", amount=" + amount + ", date=" + date
				+ ", description=" + description + "]";
	}
	
	
	
	 
	
	
	

}
