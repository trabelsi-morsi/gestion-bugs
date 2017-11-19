package tn.iit.gestion_bugs.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tn.iit.gestion_bugs.entities.User;
import tn.iit.gestion_bugs.repository.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	private static String FOLDER = "C://uploaded-images//";

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allUser", userRepository.findAll());
		return "/user/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		userRepository.delete(userRepository.getOne(id));
		return "redirect:/user/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addUser");
		return "/user/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<User> user = userRepository.findById(id);
		model.addAttribute("user", user.get());
		model.addAttribute("action", "updateUser");
		return "/user/update";

	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String add(@ModelAttribute User user, @RequestParam("photoFile") MultipartFile file) {
		user.setPhoto(file.getOriginalFilename());
		userRepository.saveAndFlush(user);

		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/user/list";
	}

	@RequestMapping(value = "/update/updateUser", method = RequestMethod.POST)
	public String update(@ModelAttribute User user) {
		userRepository.save(user);
		return "redirect:/user/list";
	}

}
