package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import tn.iit.gestion_bugs.entities.Priority;
import tn.iit.gestion_bugs.repository.PriorityRepository;
import tn.iit.gestion_bugs.service.IPriorityService;

@Component
public class PriorityService implements IPriorityService {

	@Autowired
	private PriorityRepository priorityRepository;

	@Transactional
	public Long add(Priority priority) {
		Priority p = priorityRepository.saveAndFlush(priority);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		Priority p = priorityRepository.getOne(id);
		priorityRepository.delete(p);
	}

	@Transactional
	public void update(Priority priority) {
		priorityRepository.save(priority);

	}

	public List<Priority> getAllPriorities() {
		return priorityRepository.findAll();
	}

	public Priority findById(Long id) {
		return priorityRepository.getOne(id);
	}

}