package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.iit.gestion_bugs.entities.Status;
import tn.iit.gestion_bugs.repository.StatusRepository;
import tn.iit.gestion_bugs.service.IStatusService;

@Service
public class StatusService implements IStatusService {

	@Autowired
	private StatusRepository statusRepository;

	@Transactional
	public Long add(Status status) {
		Status p = statusRepository.saveAndFlush(status);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		Status p = statusRepository.getOne(id);
		statusRepository.delete(p);
	}

	@Transactional
	public void update(Status status) {
		statusRepository.save(status);

	}

	public List<Status> getAllStatus() {
		return statusRepository.findAll();
	}

	public Status findById(Long id) {
		return statusRepository.getOne(id);
	}

}