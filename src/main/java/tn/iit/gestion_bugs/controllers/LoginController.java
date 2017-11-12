package tn.iit.gestion_bugs.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/loginError", method = RequestMethod.GET)
	public String loginError( Model model) {
		
			model.addAttribute("msg", "erreur");
		
		return "login";
	}
}
