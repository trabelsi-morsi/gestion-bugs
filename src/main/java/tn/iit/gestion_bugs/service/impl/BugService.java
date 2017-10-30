package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import tn.iit.gestion_bugs.entities.Bug;
import tn.iit.gestion_bugs.repository.BugRepository;
import tn.iit.gestion_bugs.service.IBugService;

@Component
public class BugService implements IBugService {

	@Autowired
	private BugRepository bugRepository;

	@Transactional
	public Long add(Bug bug) {
		Bug b = bugRepository.saveAndFlush(bug);
		return b.getId();
	}

	@Transactional
	public void delete(Long id) {
		Bug b = bugRepository.getOne(id);
		bugRepository.delete(b);

	}

	@Transactional
	public void update(Bug bug) {
		bugRepository.saveAndFlush(bug);

	}

	public List<Bug> getAllBugs() {
		return bugRepository.findAll();
	}

	public Bug findById(Long id) {
		return bugRepository.getOne(id);
	}

}
