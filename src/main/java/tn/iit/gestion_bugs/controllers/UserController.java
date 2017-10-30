package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.User;
import tn.iit.gestion_bugs.service.impl.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allUser", userService.getAllUsers());
		return "list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		userService.delete(id);
		return "redirect:/user/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addUser");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("user", userService.findById(id));
		model.addAttribute("action", "updateUser");
		return "form";

	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String add(@ModelAttribute User user) {
		userService.add(user);
		return "redirect:/user/list";
	}

	@RequestMapping(value = "/update/updateUser", method = RequestMethod.POST)
	public String update(@ModelAttribute User user) {
		userService.update(user);
		return "redirect:/user/list";
	}

}
