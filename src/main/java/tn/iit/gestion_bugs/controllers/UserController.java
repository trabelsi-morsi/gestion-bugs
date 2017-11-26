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
import tn.iit.gestion_bugs.repository.TypeRepository;
import tn.iit.gestion_bugs.repository.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	private static String FOLDER = "E://gestion-bugs//User//";

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private TypeRepository typeRepository;

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
		model.addAttribute("allType", typeRepository.findAll());
		return "/user/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<User> user = userRepository.findById(id);
		model.addAttribute("user", user.get());
		model.addAttribute("allType", typeRepository.findAll());
		return "/user/update";

	}

	@RequestMapping(value = "/addOrUpdateUser", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute User user, @RequestParam("photoFile") MultipartFile file) {

		if (!file.isEmpty() && file != null) {
			// check if the new image is different
			if (user.getPhoto() != file.getOriginalFilename()) {
				// delete the old image if it's not the same
				try {
					Files.deleteIfExists(Paths.get(FOLDER + user.getPhoto()));

				} catch (IOException e1) {
					e1.printStackTrace();
				}
				// update the image name
				user.setPhoto(file.getOriginalFilename());

				// write the new image
				try {
					byte[] bytes = file.getBytes();
					Path path = Paths.get(FOLDER + file.getOriginalFilename());
					Files.write(path, bytes);

				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		// insert or update the user
		userRepository.saveAndFlush(user);

		return "redirect:/user/list";
	}

}
