package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.User;
import tn.iit.gestion_bugs.repository.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allUser", userRepository.findAll());
		return "list";
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	
	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		userRepository.delete(userRepository.getOne(id));
		return "redirect:/user/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addUser");
		return "form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("user", userRepository.getOne(id));
		model.addAttribute("action", "updateUser");
		return "form";

	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String add(@ModelAttribute User user) {
		userRepository.saveAndFlush(user);
		return "redirect:/user/list";
	}

	@RequestMapping(value = "/update/updateUser", method = RequestMethod.POST)
	public String update(@ModelAttribute User user) {
		userRepository.save(user);
		return "redirect:/user/list";
	}

}
