package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
    private CustomerRepository customerRepository;

	@Override
	public String addemp(Customer c) 
	{
		customerRepository.save(c);
		
		return "Added successfully";
	}

	@Override
	public Customer checkemplogin(String email, String pwd) {
		
		return customerRepository.checkemplogin(email, pwd);
	}


}
