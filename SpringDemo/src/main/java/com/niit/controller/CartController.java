package com.niit.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class CartController {
	
@Autowired
Cart cart;
@Autowired
ProductDao productDao;
@Autowired
CartDao cartDao;
	@RequestMapping("/afteraddtocart/{p_id}")
	public ModelAndView m75(@PathVariable String p_id,HttpServletRequest request,HttpSession session)
	{
		session=request.getSession(false);
		String usrname=(String)session.getAttribute("username");	
		if(usrname==null)
		{
			ModelAndView mv=new ModelAndView("login");//jsp page
			return mv;		
		}
		else{
		ModelAndView mv=new ModelAndView("redirect:/s");
		int c_quantity=Integer.parseInt(request.getParameter("quantity"));		
		String username=(String)session.getAttribute("username");
		cart.setUsername(username);
		Product p=productDao.getUpdateData(p_id);
		cart.setC_name(p.getP_name());
		cart.setC_price(p.getP_price());
		cart.setC_brand(p.getP_brand());
		cart.setC_description(p.getP_description());
		cart.setC_quantity(c_quantity);
		cartDao.saveCartData(cart);
		return mv;
	}
	}
	@RequestMapping("/s")
	public ModelAndView mm()
	{
		ModelAndView mv=new ModelAndView("afterAddToCart");
		List<Cart> l=cartDao.cartList();	
		mv.addObject("details",l);
		return mv;
	}
	@RequestMapping("/delete/{c_id}")
	public ModelAndView ms(@PathVariable int c_id )
	{
		ModelAndView mv=new ModelAndView("redirect:/s");
		cartDao.deleteCart(c_id);
		return mv;
	}
}
