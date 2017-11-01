package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Priority;
import tn.iit.gestion_bugs.repository.PriorityRepository;

@Controller
@RequestMapping("/priority")
public class PriorityController {

	@Autowired
	private PriorityRepository priorityRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allPriorities", priorityRepository.findAll());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		priorityRepository.delete(priorityRepository.getOne(id));
		return "redirect:/priority/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addPriority");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("priority", priorityRepository.getOne(id));
		model.addAttribute("action", "updatePriority");
		return "form";

	}

	@RequestMapping(value = "/addPriority", method = RequestMethod.POST)
	public String add(@ModelAttribute Priority priority) {
		priorityRepository.saveAndFlush(priority);
		return "redirect:/priority/list";
	}

	@RequestMapping(value = "/update/updatePriority", method = RequestMethod.POST)
	public String update(@ModelAttribute Priority priority) {
		priorityRepository.save(priority);
		return "redirect:/priority/list";
	}

}
