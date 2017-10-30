package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tn.iit.gestion_bugs.entities.Severity;
import tn.iit.gestion_bugs.repository.SeverityRepository;
import tn.iit.gestion_bugs.service.ISeverityService;

@Service
public class SeverityService implements ISeverityService {

	@Autowired
	private SeverityRepository severityRepository;

	@Transactional
	public Long add(Severity severity) {
		Severity p = severityRepository.saveAndFlush(severity);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		Severity p = severityRepository.getOne(id);
		severityRepository.delete(p);
	}

	@Transactional
	public void update(Severity severity) {
		severityRepository.save(severity);

	}

	public List<Severity> getAllPriorities() {
		return severityRepository.findAll();
	}

	public Severity findById(Long id) {
		return severityRepository.getOne(id);
	}

}