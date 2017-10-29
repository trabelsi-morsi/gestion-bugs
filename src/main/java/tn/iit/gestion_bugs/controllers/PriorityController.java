package tn.iit.gestion_bugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tn.iit.gestion_bugs.service.impl.PriorityService;

@Controller
@RequestMapping("/priority")
public class PriorityController {
	
	
	@Autowired
	private PriorityService priorityService;

}
