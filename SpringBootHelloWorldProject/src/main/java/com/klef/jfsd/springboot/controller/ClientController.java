package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Customer;

import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{   	
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
    
    
	@GetMapping("/")
	public String home()
	{
		return "home";
	}
	
	@GetMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	@GetMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	
	@GetMapping("/call")
	public String call()
	{
		return "call";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/write")
	public String write() 
	{
		return "write";
	}
	
	
	@GetMapping("/login")
	public String login() 
	{
		return "login";
	}
	  
	
	@GetMapping("/admin")
	public String admin() 
	{
		return "admin";
	}
	
	@GetMapping("/module")
	public String module() 
	{
		return "module";
	}
	
	@GetMapping("/reviews")
	public String reviews() 
	{
		return "reviews";
	}
	
	@GetMapping("/book")
	public String book() 
	{
		return "book";
	}
	
	@PostMapping("insertemp")
	public ModelAndView insertaction(HttpServletRequest request) 
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String name = request.getParameter("name");
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pass");
		    String repass = request.getParameter("repass");
		    String contact = request.getParameter("contact");
			
		    
		      Customer c = new Customer();
		      
		     c.setName(name);
		     c.setEmail(email);
		     c.setNumber(contact);
		     c.setPass(pwd);
		     c.setConpass(repass);
		    
		      
		    
		      msg = customerService.addemp(c);
		      mv.setViewName("home");
			  mv.addObject("message",msg);
		        
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			mv.setViewName("home");
			mv.addObject("message",msg);
		}
	   
		return mv;
	    
	}
	
	
	@PostMapping("checkemplogin")
	public ModelAndView checkemplogin(HttpServletRequest request) 
	{
		 ModelAndView mv = new ModelAndView();
	
		 String email = request.getParameter("email");
	     String pwd = request.getParameter("pass");
	     
	    Customer emp =  customerService.checkemplogin(email, pwd);
	    
	    if(emp!=null)
	    {
	    	//session
	    	
	    	HttpSession session = request.getSession();
	    	
	    	session.setAttribute("cid", emp.getId()); // eid is a session variable
	    	session.setAttribute("cname", emp.getName()); // ename is a session variable
	    	
	    	//session
	    	
	    	mv.setViewName("home");
	      
	    }
	    else
	    {
	      mv.setViewName("login");
	      mv.addObject("message","Login Failed");
	    }
		
	    return mv;
	}
	    
}
