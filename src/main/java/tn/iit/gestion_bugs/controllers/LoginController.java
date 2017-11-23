package tn.iit.gestion_bugs.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value = "/403")
	public String errorpage(Model model) {
		model.addAttribute("msg", "403");
		return "erreur";
	}
	 
	@RequestMapping(value = "/404")
	public String errorpage404(Model model) {
		model.addAttribute("msg", "404");
		return "erreur";
	}
	 
	
}
