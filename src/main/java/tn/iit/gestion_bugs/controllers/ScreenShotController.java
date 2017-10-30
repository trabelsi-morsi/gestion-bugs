package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.ScreenShot;
import tn.iit.gestion_bugs.service.impl.ScreenShotService;

@Controller
@RequestMapping("/screenShot")
public class ScreenShotController {

	@Autowired
	private ScreenShotService screenShotService;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allPriorities", screenShotService.getAllScreenShots());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		screenShotService.delete(id);
		return "redirect:/screenShot/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addScreenShot");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("screenShot", screenShotService.findById(id));
		model.addAttribute("action", "updateScreenShot");
		return "form";

	}

	@RequestMapping(value = "/addScreenShot", method = RequestMethod.POST)
	public String add(@ModelAttribute ScreenShot screenShot) {
		screenShotService.add(screenShot);
		return "redirect:/screenShot/list";
	}

	@RequestMapping(value = "/update/updateScreenShot", method = RequestMethod.POST)
	public String update(@ModelAttribute ScreenShot screenShot) {
		screenShotService.update(screenShot);
		return "redirect:/screenShot/list";
	}

}
