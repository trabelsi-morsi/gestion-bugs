package tn.iit.gestion_bugs.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tn.iit.gestion_bugs.repository.UserRepository;
import org.springframework.security.core.userdetails.User;

@Controller
public class LoginController {

	@Autowired
	private UserRepository userRepository;

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/dashboard")
	public String dashboard(ModelMap model, Principal principal) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User customUser = (User) authentication.getPrincipal();
		String userName = customUser.getUsername();
		model.addAttribute("connectedUser", userRepository.findByLogin(userName));
		return "dashboard";
	}

	@RequestMapping(value = "/loginError", method = RequestMethod.GET)
	public String loginError(Model model) {
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
