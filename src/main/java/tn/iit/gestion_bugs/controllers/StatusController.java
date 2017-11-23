package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Status;
import tn.iit.gestion_bugs.repository.StatusRepository;

@Controller
@RequestMapping("/status")
public class StatusController {

	@Autowired
	private StatusRepository statusRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allStatus", statusRepository.findAll());
		return "/status/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		statusRepository.delete(statusRepository.getOne(id));
		return "redirect:/status/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addStatus");
		return "/status/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("status", statusRepository.findById(id).get());
		return "/status/update";

	}

	@RequestMapping(value = "/addOrUpdateStatus", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute Status status) {
		statusRepository.saveAndFlush(status);
		return "redirect:/status/list";
	}

}