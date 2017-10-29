package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Type;
import tn.iit.gestion_bugs.service.impl.TypeService;

@Controller
@RequestMapping("/type")
public class TypeController {

	@Autowired
	private TypeService typeService;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allPriorities", typeService.getAllType());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		typeService.delete(id);
		return "redirect:/priority/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addPriority");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("priority", typeService.findById(id));
		model.addAttribute("action", "updatePriority");
		return "form";

	}

	@RequestMapping(value = "/addPriority", method = RequestMethod.POST)
	public String add(@ModelAttribute Type type) {
		typeService.add(type);
		return "redirect:/priority/list";
	}

	@RequestMapping(value = "/update/updatePriority", method = RequestMethod.POST)
	public String update(@ModelAttribute Type type) {
		typeService.update(type);
		return "redirect:/priority/list";
	}

}
