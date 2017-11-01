package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Category;
import tn.iit.gestion_bugs.service.impl.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allCategories", categoryService.getAllCategories());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		categoryService.delete(id);
		return "redirect:/category/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addCategory");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("category", categoryService.findById(id));
		model.addAttribute("action", "updateCategory");
		return "form";

	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String add(@ModelAttribute Category category) {
		categoryService.add(category);
		return "redirect:/category/list";
	}

	@RequestMapping(value = "/update/updateCategory", method = RequestMethod.POST)
	public String update(@ModelAttribute Category category) {
		categoryService.update(category);
		return "redirect:/category/list";
	}

}