package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Status;
import tn.iit.gestion_bugs.service.impl.StatusService;

@Controller
@RequestMapping("/status")
public class StatusController {

	@Autowired
	private StatusService statusService;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allStatus", statusService.getAllStatus());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		statusService.delete(id);
		return "redirect:/status/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addStatus");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("status", statusService.findById(id));
		model.addAttribute("action", "updateStatus");
		return "form";

	}

	@RequestMapping(value = "/addStatus", method = RequestMethod.POST)
	public String add(@ModelAttribute Status status) {
		statusService.add(status);
		return "redirect:/status/list";
	}

	@RequestMapping(value = "/update/updateStatus", method = RequestMethod.POST)
	public String update(@ModelAttribute Status status) {
		statusService.update(status);
		return "redirect:/status/list";
	}

}