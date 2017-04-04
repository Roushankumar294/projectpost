package com.nit.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nit.dao.UserDAO;
import com.nit.model.User;

@Controller
public class MyController {

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/send")
    public ModelAndView sendData(HttpServletRequest request)
	{
	    ModelAndView mv7=new ModelAndView("savedata");
		String username=request.getParameter("username");
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		String address=request.getParameter("address");
		User u1=new User();
		u1.setUsername(username);
		u1.setEmailid(emailid);
		u1.setPassword(password);
		u1.setAddress(address);
		//UserDAO userDAO=new UserDAO();
		userDAO.saveUser(u1);	
		return mv7;	
	}
	
	@RequestMapping("/demo")
	public ModelAndView m1()
	{
		ModelAndView mv11=new ModelAndView("demo");
		return mv11;
	}
	
}
