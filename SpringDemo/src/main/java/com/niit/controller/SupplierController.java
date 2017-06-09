package com.niit.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;
@Controller
public class SupplierController {
	@Autowired
	SupplierDao supplierDao;
	@RequestMapping("/goforadmin")
	public ModelAndView m3()
	{
		ModelAndView mv=new ModelAndView("goforadmin");
		return mv;
	}
	@RequestMapping("/addsupplier")
	public ModelAndView m2()
	{
		ModelAndView mv=new ModelAndView("addsupplier","command",new Supplier());//command is a name of object in which data we supply is stored
		return mv;
	}
	@RequestMapping("/savesupplier")
	public ModelAndView m1(HttpServletRequest request)
	{
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String description=request.getParameter("description");
		String address=request.getParameter("address");
		Supplier su=new Supplier();
		su.setName(name);
		su.setId(id);
		su.setDescription(description);
		su.setAddress(address);
		supplierDao.saveSupplier(su);
		ModelAndView mv=new ModelAndView("redirect:/viewsupplier");
		return mv;
	}
	@RequestMapping("/viewsupplier")
	public ModelAndView m10()
	{
		ModelAndView mv=new ModelAndView("viewsupplier");
		List<Supplier> l=supplierDao.view();
		mv.addObject("supplierdata",l);
		return mv;
	}
@RequestMapping("/supplierdelete/{id}")
public ModelAndView md(@PathVariable String id)
{
	ModelAndView mv=new ModelAndView("redirect:/viewsupplier");
	supplierDao.deleteSupplier(id);
	return mv;
}
@RequestMapping("/getupdateSupplierdata/{id}")
public ModelAndView ma(@PathVariable String id)
{
	Supplier s=supplierDao.getSupplierData(id);
	ModelAndView mv=new ModelAndView("getupdateSupplierdata","command",s);//why we pass s here?it will give filled value to textbox
	return mv;
}
@RequestMapping("/updationsuccess")
public ModelAndView muk(Supplier su)
{
	supplierDao.updateSupplierData(su);
	ModelAndView mv=new ModelAndView("redirect:/viewsupplier");//for correctness of url mapping
	return mv;
}
}