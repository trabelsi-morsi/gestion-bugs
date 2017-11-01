package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Bug;
import tn.iit.gestion_bugs.repository.BugRepository;

@Controller
@RequestMapping("/bug")
public class BugController {

	@Autowired
	private BugRepository bugRepository;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addBug");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("Bug", bugRepository.findById(id));
		model.addAttribute("action", "updateBug");
		return "form";

	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		bugRepository.delete(bugRepository.getOne(id));
		return "redirect:/bug/list";

	}

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allBugs", bugRepository.findAll());
		return "list";
	}

	@RequestMapping(value = "/addBug", method = RequestMethod.POST)
	public String add(@ModelAttribute Bug bug) {
		bugRepository.saveAndFlush(bug);
		return "redirect:/bug/list";
	}

	@RequestMapping(value = "/update/updateBug", method = RequestMethod.POST)
	public String update(@ModelAttribute Bug bug) {
		bugRepository.save(bug);
		return "redirect:/bug/list";
	}

}
