package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Customer;



public interface CustomerService 
{
	public String addemp(Customer c);
	
	public Customer checkemplogin(String email,String pwd); 

}
