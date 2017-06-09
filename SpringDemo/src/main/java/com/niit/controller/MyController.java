package com.niit.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.niit.dao.RegisterDao;
import com.niit.model.Register;
@Controller
public class MyController {
	@Autowired
RegisterDao registerDao;
	@RequestMapping("/")
	public ModelAndView m1()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
@RequestMapping("/signup")//href /action name
public ModelAndView m2()
{
	ModelAndView mv=new ModelAndView("signup");//jsp page
	return mv;
}
@RequestMapping("/signout")
public ModelAndView logout(HttpServletRequest request,HttpSession session)
{
	 request.getSession().invalidate();//used for distroy session
	 ModelAndView mv=new ModelAndView("index");
	 return mv;
	 
}
@RequestMapping("/login")//href /action name
public ModelAndView m8()
{
	ModelAndView mv=new ModelAndView("login");//jsp page
	return mv;
}
@RequestMapping("/myprofile")
public ModelAndView m0()
{
	ModelAndView mv=new ModelAndView("redirect:/s");
	return mv;
}
@RequestMapping("/savedata")
public ModelAndView m9(HttpServletRequest request)
{
	String username=request.getParameter("username");
	String emailid=request.getParameter("emailid");
	String password=request.getParameter("password");
	String confirmpassword=request.getParameter("confirmpassword");
	String address=request.getParameter("address");
	Register r2=new Register();
	r2.setUsername(username);
	r2.setEmailid(emailid);
	r2.setPassword(password);
	r2.setConfirmpassword(confirmpassword);
	r2.setAddress(address);
	r2.setEnabled(true);
	r2.setRole("ROLE_USER");
	registerDao.saveUser(r2);
	ModelAndView mv=new ModelAndView("redirect:/");
	return mv;
}
@RequestMapping("/deletedata")
public ModelAndView m12()
{
	ModelAndView mv=new ModelAndView("deletedata");
	return mv;
}	

@RequestMapping("/viewcustomerdata")
public ModelAndView m10()
{
	ModelAndView mv=new ModelAndView("viewcustomerdata");
	List<Register> l=registerDao.viewCustomer();
	mv.addObject("customerdata",l);
	return mv;
}
@RequestMapping("/deletecustomerdata/{emailid}")
public ModelAndView md(@PathVariable String emailid)
{
	ModelAndView mv=new ModelAndView("redirect:/viewcustomerdata");
	registerDao.deleteUser(emailid);
	return mv;
}
@RequestMapping("/sendtoindex")
public ModelAndView m123(HttpServletRequest request,HttpSession session)
{
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	boolean b=registerDao.loginvalidate(username,password);
	if(b==true)
	{
		session.setAttribute("username",username);
		System.out.println(session.getAttribute(username));
		ModelAndView mv=new ModelAndView("index");
	return mv;
	}
	else
	{
		String msg="your id is not in the database try again with valid name and password";
		session.setAttribute("s1",msg);
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
}
@RequestMapping("/AdminLogin")
public ModelAndView mq()
{
	ModelAndView mv=new ModelAndView("adminlogin");
	return mv;
}
@RequestMapping("/admin")
public ModelAndView ml()
{
	ModelAndView mv=new ModelAndView("goforadmin");
	return mv;
}
@RequestMapping("/AdminLoginError")
public ModelAndView m22()
{
	ModelAndView mv=new ModelAndView("adminloginerror");
	return mv;
}


}