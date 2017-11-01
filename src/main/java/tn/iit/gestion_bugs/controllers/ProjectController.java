package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Project;
import tn.iit.gestion_bugs.repository.ProjectRepository;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private ProjectRepository projectRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allPriorities", projectRepository.findAll());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		projectRepository.delete(projectRepository.getOne(id));
		return "redirect:/project/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addProject");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("project", projectRepository.getOne(id));
		model.addAttribute("action", "updateProject");
		return "form";

	}

	@RequestMapping(value = "/addProject", method = RequestMethod.POST)
	public String add(@ModelAttribute Project project) {
		projectRepository.saveAndFlush(project);
		return "redirect:/project/list";
	}

	@RequestMapping(value = "/update/updateProject", method = RequestMethod.POST)
	public String update(@ModelAttribute Project project) {
		projectRepository.save(project);
		return "redirect:/project/list";
	}

}