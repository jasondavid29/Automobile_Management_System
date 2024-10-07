package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;


@Service
public class AdminServiceImpl implements AdminService
{
    @Autowired
	private AdminRepository adminRepository;
    
    @Autowired
    private CustomerRepository customerRepository;
    
    
	
	@Override
	public List<Customer> viewallemps() 
	{
		
		return customerRepository.findAll();
	}

	@Override
	public String deleteemp(int eid) 
	{
		Optional<Customer> obj = customerRepository.findById(eid);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Customer emp = obj.get();
	      customerRepository.delete(emp);
	      msg = "Employee Deleted Successfully";
	    }
	    else
	    {
	      msg = "Employee Not Found";
	    }
	    
	    return msg;
	}

	@Override
	public Customer viewempbyid(int eid) {
       
		Optional<Customer> obj = customerRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Customer c = obj.get();
	      return c;
	    }
	    else
	    {
	      return null;
	    }
	}

	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		
		return  adminRepository.checkadminlogin(auname, apwd);
	}

}
