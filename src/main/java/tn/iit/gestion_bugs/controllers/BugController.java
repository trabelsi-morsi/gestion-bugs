package tn.iit.gestion_bugs.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tn.iit.gestion_bugs.dto.BugDTO;
import tn.iit.gestion_bugs.entities.Bug;
import tn.iit.gestion_bugs.entities.ScreenShot;
import tn.iit.gestion_bugs.repository.BugRepository;
import tn.iit.gestion_bugs.repository.CategoryRepository;
import tn.iit.gestion_bugs.repository.PriorityRepository;
import tn.iit.gestion_bugs.repository.ProjectRepository;
import tn.iit.gestion_bugs.repository.ScreenShotRepository;
import tn.iit.gestion_bugs.repository.SeverityRepository;
import tn.iit.gestion_bugs.repository.StatusRepository;
import tn.iit.gestion_bugs.repository.UserRepository;

@Controller
@RequestMapping("/bug")
public class BugController {

	@Autowired
	private BugRepository bugRepository;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private PriorityRepository priorityRepository;
	@Autowired
	private ProjectRepository projectRepository;
	@Autowired
	private ScreenShotRepository screenShotRepository;
	@Autowired
	private SeverityRepository severityRepository;
	@Autowired
	private StatusRepository statusRepository;
	@Autowired
	private UserRepository userRepository;

	private static String FOLDER = "E://gestion-bugs//Screenshots//";

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("categories", categoryRepository.findAll());
		model.addAttribute("priorities", priorityRepository.findAll());
		model.addAttribute("projects", projectRepository.findAll());
		model.addAttribute("severities", severityRepository.findAll());
		model.addAttribute("status", statusRepository.findAll());
		model.addAttribute("users", userRepository.findAll());
		return "/bug/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		model.addAttribute("categories", categoryRepository.findAll());
		model.addAttribute("priorities", priorityRepository.findAll());
		model.addAttribute("projects", projectRepository.findAll());
		model.addAttribute("severities", severityRepository.findAll());
		model.addAttribute("status", statusRepository.findAll());
		model.addAttribute("users", userRepository.findAll());
		model.addAttribute("bug", bugRepository.findById(id));
		return "/bug/update";

	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		Bug bug = bugRepository.getOne(id);
		bug.setDeleted(false);
		bugRepository.saveAndFlush(bug);
		return "redirect:/bug/list";

	}

	@RequestMapping(value = "/addOrUpdateBug", method = RequestMethod.POST)
	public String addOrUpdate(@ModelAttribute Bug bug, @RequestParam("idCategory") Long idCategory,
			@RequestParam("idSeverity") Long idSeverity, @RequestParam("idPriority") Long idPriority,
			@RequestParam("idStatus") Long idStatus, @RequestParam("idProject") Long idProject,
			@RequestParam("dateR") String dateRaised, @RequestParam("dateC") String dateClosed,
			@RequestParam("files") MultipartFile[] screenshots) {

		bug.setCategory(categoryRepository.findById(idCategory).get());
		bug.setSeverity(severityRepository.findById(idSeverity).get());
		bug.setPriority(priorityRepository.findById(idPriority).get());
		bug.setStatus(statusRepository.findById(idStatus).get());
		bug.setProject(projectRepository.findById(idProject).get());
		bug.setTesterId(1L);

		SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
		try {
			bug.setDateRaised(formater.parse(dateRaised));
			bug.setDateClosed(formater.parse(dateClosed));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		// save the bug
		bugRepository.saveAndFlush(bug);
		// save the screenshots
		int i = 0;
		for (MultipartFile screenshot : screenshots) {
			i++;
			if (!screenshot.isEmpty() && screenshot != null) {
				try {
					byte[] bytes = screenshot.getBytes();
					Path path = Paths.get(FOLDER + screenshot.getOriginalFilename());
					Files.write(path, bytes);

				} catch (IOException e) {
					e.printStackTrace();
				}
				ScreenShot sc = new ScreenShot();
				sc.setBug(bug);
				sc.setPhoto(screenshot.getOriginalFilename());
				sc.setName("ScreenShot" + i);
				screenShotRepository.saveAndFlush(sc);
				bug.getScreenShots().add(sc);
			}

		}

		return "redirect:/bug/list";
	}

	@RequestMapping(value = "/list")
	public String list(Model model) {
		List<BugDTO> bugs = new ArrayList<>();

		for (Bug bug : bugRepository.findAll()) {
			bugs.add(BugDTO.convertToDTO(bug));

		}
		model.addAttribute("allBugs", bugs);
		return "list";

	}

}
