package tn.iit.gestion_bugs.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tn.iit.gestion_bugs.entities.Type;
import tn.iit.gestion_bugs.repository.TypeRepository;

@Controller
@RequestMapping("/type")
public class TypeController {

	@Autowired
	private TypeRepository typeRepository;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("allType", typeRepository.findAll());
		return "/type/list";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		typeRepository.delete(typeRepository.getOne(id));
		return "redirect:/type/list";

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String setupAddForm(Model model) {
		model.addAttribute("action", "addType");
		return "/type/form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String setupUpdateForm(@PathVariable(name = "id") Long id, Model model) {
		Optional<Type> type = typeRepository.findById(id);
		model.addAttribute("type", type.get());
		model.addAttribute("action", "updateType");
		return "/type/update";

    }

	@RequestMapping(value = "/addType", method = RequestMethod.POST)
	public String add(@ModelAttribute Type type) {
		typeRepository.saveAndFlush(type);
		return "redirect:/type/list";
	}

	@RequestMapping(value = "/update/updateType", method = RequestMethod.POST)
	public String update(@ModelAttribute Type type) {
		typeRepository.save(type);
		return "redirect:/type/list";
	}

}