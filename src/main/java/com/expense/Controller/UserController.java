package com.expense.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.expense.Entity.Expense;
import com.expense.Entity.Users;
import com.expense.Service.ExpenseService;
import com.expense.Service.UserService;
 

@Controller
public class UserController {
	
	@Autowired
	UserService us;
	
	@Autowired 
	ExpenseService es;
	 
	
	@RequestMapping("/")
	public String Registerpage()
	{
		return"index";
	}

	@RequestMapping("/loginpage")
	public String Loginpage()
	{
		return "loginpage";
	}
	@RequestMapping("/index")
	public String indexpage()
	{
		return "index";
	}
	
	
	@RequestMapping("/welcomepage")
	public String Appstart()
	{
		return "welcomepage";
		
	}
	@RequestMapping("/addexpense")
	public String AddExpense()
	{
		return "addexpense";
		
	}
 
	@RequestMapping("/editexpense")
	public String EditExpenses()
	{
		return "editexpense";
	}
	
	
	
	// User data Controller
	
	@PostMapping("/save")
	public String storedata(@ModelAttribute("ul") Users ul)
	{
		us.register(ul);
		return "redirect:/loginpage";
	}
	
	@PostMapping("/checkdata")
	public String Logincheck(@RequestParam("username") String username, @RequestParam("password") String password,HttpSession s1)
	{
		
		Users ux = us.findByUsernameAndPassword(username,password);
    	if(ux==null)
    	{ 
    		return"redirect:/loginpage";
    	}
    	
    	s1.setAttribute("temp", ux.getUsername());
    	return"redirect:/welcomepage";
		
	}
	
	
	
	 // Expense Controller
	@PostMapping("/add")
	public String SaveExpenses(@ModelAttribute Expense e)
	{
		es.saveExpense(e);
		return "redirect:/listofexpense";
		
	}
	
	
	@RequestMapping("/listofexpense")
	public String AllExpenses(Model m)
	{
		List<Expense> le = es.getAllInfo();
		m.addAttribute("mm",le);
		return "listofexpense";
		
	}
	
	@GetMapping("/delete/{id}")
	public String Getsingleexpense(@PathVariable int id)
	{
		es.deleteExpense(id);
		return"redirect:/listofexpense";
	}
	
	
	@RequestMapping("/edit/{id}")
	public String EditExpense(@PathVariable int id, Model m)
	{
		Expense ep = es.getSingleExpense(id);
		m.addAttribute("kk",ep);
		System.out.println(ep);
		return "editexpense";
	}
	 
	@PostMapping("/update")
	public String Updatedata(@ModelAttribute("xp") Expense xp)
	{
		Expense exp = new Expense();
		exp.setId(xp.getId());
		exp.setExpensename(xp.getExpensename());
		exp.setAmount(xp.getAmount());
		exp.setDate(xp.getDate());
		exp.setDescription(xp.getDescription());
		
		es.saveExpense(exp);
		return "redirect:/listofexpense";
		
	}
 

}
