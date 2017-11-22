package tn.iit.gestion_bugs.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tn.iit.gestion_bugs.entities.Project;
import tn.iit.gestion_bugs.repository.ProjectRepository;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private ProjectRepository projectRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allProjects", projectRepository.findAll());
		return "/project/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		projectRepository.delete(projectRepository.getOne(id));
		return "redirect:/project/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		return "/project/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("project", projectRepository.findById(id).get());
		return "/project/update";

	}

	@RequestMapping(value = "/addOrUpdateProject", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute Project project, @RequestParam(name = "date") String date) {
		SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
		try {
			project.setDate(formater.parse(date));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		projectRepository.saveAndFlush(project);
		return "redirect:/project/list";
	}

}