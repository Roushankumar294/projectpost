package com.niit.controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.niit.dao.CategoryDao;
import com.niit.model.Category;
@Controller
public class CategoryController {
	@Autowired
	CategoryDao categoryDao;	
	@RequestMapping("/addcategory")
	public ModelAndView m()
	{
		ModelAndView mv=new ModelAndView("addcategory","command",new Category());
		return mv;
	}
	@RequestMapping("/savecategory")
	public ModelAndView m1(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		Category cg=new Category();
		cg.setId(id);
		cg.setName(name);
		cg.setDescription(description);
		categoryDao.saveCategory(cg);
		ModelAndView mv=new ModelAndView("redirect:/viewcategory");
		return mv;
	}
	@RequestMapping("/viewcategory")
	public ModelAndView m10()
	{
		ModelAndView mv=new ModelAndView("viewcategory");
		List<Category> l=categoryDao.view();
		mv.addObject("categorydata",l);
		return mv;
	}
	@RequestMapping("/getcategorydata/{id}")
	public ModelAndView m3(@PathVariable  String id)
	{
		Category cg=categoryDao.getCategoryData(id);
		ModelAndView mv=new ModelAndView("editcategory","command",cg);
		return mv;
	}
@RequestMapping("/categoryupdatesuccessful")
public ModelAndView m12(Category cg)
{
	categoryDao.updateCategoryData(cg);
	ModelAndView mv=new ModelAndView("redirect:/viewcategory","command",new Category());
	return mv;
}
@RequestMapping("/deletecategorydata/{id}")
public ModelAndView m14(@PathVariable String id)
{
	categoryDao.deleteCategoryData(id);
	ModelAndView mv=new ModelAndView("redirect:/viewcategory");
	return mv;
}
}