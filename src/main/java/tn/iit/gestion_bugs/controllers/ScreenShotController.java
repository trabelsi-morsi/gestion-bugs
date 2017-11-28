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

import tn.iit.gestion_bugs.entities.ScreenShot;
import tn.iit.gestion_bugs.entities.User;
import tn.iit.gestion_bugs.repository.ScreenShotRepository;

@Controller
@RequestMapping("/screenShot")
public class ScreenShotController {

	@Autowired
	private ScreenShotRepository screenShotRepository;


	private static String FOLDER = "E://gestion-bugs//User//";
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allscreenShot", screenShotRepository.findAll());
		return "/screenShot/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		screenShotRepository.delete(screenShotRepository.getOne(id));
		return "redirect:/screenShot/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addScreenShot");
		return "/screenShot/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<ScreenShot> screenshot = screenShotRepository.findById(id);
		model.addAttribute("screenshot", screenshot.get());
		model.addAttribute("action", "updateScreenShot");
		return "/screenShot/update";

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
	
	
	@RequestMapping(value = "/addOrUpdateScreenShot", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute ScreenShot ScreenShot, @RequestParam("photoFile") MultipartFile file) {

		if (!file.isEmpty() && file != null) {
			// check if the new image is different
			if (ScreenShot.getPhoto() != file.getOriginalFilename()) {
				// delete the old image if it's not the same
				try {
					Files.deleteIfExists(Paths.get(FOLDER + ScreenShot.getPhoto()));

				} catch (IOException e1) {
					e1.printStackTrace();
				}
				// update the image name
				ScreenShot.setPhoto(file.getOriginalFilename());

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
		screenShotRepository.saveAndFlush(ScreenShot);

		return "redirect:/screenShot/list";
	}
	

}
