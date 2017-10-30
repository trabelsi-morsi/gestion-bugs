package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Severity;
import tn.iit.gestion_bugs.service.impl.SeverityService;

@Controller
@RequestMapping("/serevity")
public class SeverityController {

	@Autowired
	private SeverityService severityService;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allPriorities", severityService.getAllPriorities());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		severityService.delete(id);
		return "redirect:/severity/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addSeverity");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("severity", severityService.findById(id));
		model.addAttribute("action", "updateSeverity");
		return "form";

	}

	@RequestMapping(value = "/addSeverity", method = RequestMethod.POST)
	public String add(@ModelAttribute Severity severity) {
		severityService.add(severity);
		return "redirect:/severity/list";
	}

	@RequestMapping(value = "/update/updateSeverity", method = RequestMethod.POST)
	public String update(@ModelAttribute Severity severity) {
		severityService.update(severity);
		return "redirect:/severity/list";
	}

}