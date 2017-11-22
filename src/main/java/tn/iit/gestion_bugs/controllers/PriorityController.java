package tn.iit.gestion_bugs.controllers;

import java.util.Optional;

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
		return "priority/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		priorityRepository.delete(priorityRepository.getOne(id));
		return "redirect:/priority/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addPriority");
		return "/priority/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<Priority> priority = priorityRepository.findById(id);
		model.addAttribute("priority", priority.get());
		return "/priority/update";

	}

	@RequestMapping(value = "/addOrUpdatePriority", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute Priority priority) {
		priorityRepository.saveAndFlush(priority);
		return "redirect:/priority/list";
	}

}
