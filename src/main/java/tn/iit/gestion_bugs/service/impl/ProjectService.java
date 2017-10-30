package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tn.iit.gestion_bugs.entities.Project;
import tn.iit.gestion_bugs.repository.ProjectRepository;
import tn.iit.gestion_bugs.service.IProjectService;

@Service
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectRepository projectRepository;

	@Transactional
	public Long add(Project project) {
		Project p = projectRepository.saveAndFlush(project);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		Project p = projectRepository.getOne(id);
		projectRepository.delete(p);
	}

	@Transactional
	public void update(Project project) {
		projectRepository.save(project);

	}

	public List<Project> getAllPriorities() {
		return projectRepository.findAll();
	}

	public Project findById(Long id) {
		return projectRepository.getOne(id);
	}

}