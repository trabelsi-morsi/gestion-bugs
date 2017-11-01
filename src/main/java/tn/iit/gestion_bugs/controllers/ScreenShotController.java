package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.ScreenShot;
import tn.iit.gestion_bugs.repository.ScreenShotRepository;

@Controller
@RequestMapping("/screenShot")
public class ScreenShotController {

	@Autowired
	private ScreenShotRepository screenShotRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allPriorities", screenShotRepository.findAll());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		screenShotRepository.delete(screenShotRepository.getOne(id));
		return "redirect:/screenShot/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addScreenShot");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("screenShot", screenShotRepository.getOne(id));
		model.addAttribute("action", "updateScreenShot");
		return "form";

	}

	@RequestMapping(value = "/addScreenShot", method = RequestMethod.POST)
	public String add(@ModelAttribute ScreenShot screenShot) {
		screenShotRepository.saveAndFlush(screenShot);
		return "redirect:/screenShot/list";
	}

	@RequestMapping(value = "/update/updateScreenShot", method = RequestMethod.POST)
	public String update(@ModelAttribute ScreenShot screenShot) {
		screenShotRepository.save(screenShot);
		return "redirect:/screenShot/list";
	}

}
