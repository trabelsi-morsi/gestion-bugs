package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Category;
import tn.iit.gestion_bugs.repository.CategoryRepository;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private CategoryRepository categoryRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allCategories", categoryRepository.findAll());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		categoryRepository.delete(categoryRepository.getOne(id));
		return "redirect:/category/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addCategory");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("category", categoryRepository.getOne(id));
		model.addAttribute("action", "updateCategory");
		return "form";

	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String add(@ModelAttribute Category category) {
		categoryRepository.saveAndFlush(category);
		return "redirect:/category/list";
	}

	@RequestMapping(value = "/update/updateCategory", method = RequestMethod.POST)
	public String update(@ModelAttribute Category category) {
		categoryRepository.save(category);
		return "redirect:/category/list";
	}

}