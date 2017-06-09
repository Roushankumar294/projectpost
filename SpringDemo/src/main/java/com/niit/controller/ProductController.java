package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.CartDao;
import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	@Autowired
	Product pd;
	@Autowired
	Cart cart;
	@Autowired
	CartDao cartDao;
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	CategoryDao categoryDao;
	@RequestMapping("/addproduct")
	public ModelAndView m23()
	{
		ModelAndView mv=new ModelAndView("product","command",new Product());
		List<Supplier> l1=productDao.getSupplierName();
		mv.addObject("SupplierName",l1);
		List<Category> l2=productDao.getCategoryName();
		mv.addObject("CategoryName",l2);
		return mv;
	}
	
	@RequestMapping(value="/saveproduct",method=RequestMethod.POST)
public ModelAndView m(@ModelAttribute Product p)
{
		
			ModelAndView mv=new ModelAndView("redirect:/addproduct");
				try{
					String filename=null;//image file name
					byte[] bytes = null;//byte to store jpg,mp3,mp4
					if(!p.getFile().isEmpty())
					{
				bytes=p.getFile().getBytes();
					//it will calculate no. of bytes and store data in byte array	
				productDao.saveProduct(p);
				String path="C:/Users/K/workspace/SpringDemo/src/main/webapp/resources/images/"+p.getP_id()+".jpg";
				File f= new File(path);
				BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();	
				}
				}
				catch(Exception e)
				{
				System.out.println(e);
				}
		return mv;
}

	@RequestMapping("/viewproduct")
	public ModelAndView m1()
	{
		ModelAndView mv=new ModelAndView("viewproduct");
		List<Product> l=productDao.view();
		Gson g=new Gson();
		String j=g.toJson(l);
		mv.addObject("productdata",j);
		return mv;
	}
	@RequestMapping("/kids")
	public ModelAndView kids()
	{
		ModelAndView mv=new ModelAndView("gotocategory");
		List<Product> l=productDao.kidsData();
		mv.addObject("kids",l);
		return mv;
	}
	@RequestMapping("/mens")
	public ModelAndView mens()
	{
		ModelAndView mv=new ModelAndView("gotocategory");
		List<Product> l=productDao.mensData();
		mv.addObject("mens",l);
		return mv;
	}
	@RequestMapping("/womens")
	public ModelAndView womens()
	{
		ModelAndView mv=new ModelAndView("gotocategory");
		List<Product> l=productDao.womensData();
		mv.addObject("womens",l);
		return mv;
	}
	@RequestMapping("/editproduct/{p_id}")
	public ModelAndView m2(@PathVariable String p_id)
	{
		Product p=productDao.getUpdateData(p_id);
		ModelAndView mv=new ModelAndView("getproductdata","command",p);
		List<Supplier> l1=productDao.getSupplierName();
		mv.addObject("SupplierName",l1);
		List<Category> l2=productDao.getCategoryName();
		mv.addObject("CategoryName",l2);
		return mv;
	}
	@RequestMapping("/updatesuccess")
	public ModelAndView m3(Product pd)
	{
		ModelAndView mv=new ModelAndView("redirect:/viewproduct");
		productDao.saveUpdateData(pd);
		return mv;
	}
	@RequestMapping("/deleteproduct/{p_id}")
	public ModelAndView m4(@PathVariable String p_id)
	{
	productDao.deleteProduct(p_id);
	ModelAndView mv=new ModelAndView("redirect:/viewproduct");
	return mv;
}
	@RequestMapping("/eachproductdetails/{p_id}")
	public ModelAndView m5(@PathVariable String p_id)
	{
		ModelAndView mv=new ModelAndView("eachproductdetails");
		List<Product> l=productDao.eachdetails(p_id);
		mv.addObject("kd",l);
		return mv;		
	}
	}