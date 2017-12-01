package tn.iit.gestion_bugs.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Severity;
import tn.iit.gestion_bugs.repository.SeverityRepository;

@Controller
@RequestMapping("/severity")
public class SeverityController {

	@Autowired
	private SeverityRepository severityRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allSeverities", severityRepository.findAll());
		return "/severity/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		severityRepository.delete(severityRepository.getOne(id));
		return "redirect:/severity/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		return "/severity/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<Severity> severity = severityRepository.findById(id);
		model.addAttribute("severity", severity.get());
		return "/severity/update";

	}

	@RequestMapping(value = "/addOrUpdateSeverity", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute Severity severity) {
		severityRepository.saveAndFlush(severity);
		return "redirect:/severity/list";
	}

}