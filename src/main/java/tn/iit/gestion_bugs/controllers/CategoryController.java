package tn.iit.gestion_bugs.controllers;

import java.util.Optional;

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
		return "/category/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		categoryRepository.delete(categoryRepository.getOne(id));
		return "redirect:/category/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addCategory");
		return "/category/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<Category> category = categoryRepository.findById(id);
		model.addAttribute("category", category.get());
		return "/category/update";

	}

	@RequestMapping(value = "/addOrUpdateCategory", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute Category category) {
		categoryRepository.saveAndFlush(category);
		return "redirect:/category/list";
	}

}