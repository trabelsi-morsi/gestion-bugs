package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Priority;

public interface IPriorityService {

	Long add(Priority priority);

	void delete(Long id);

	void update(Priority priority);

	List<Priority> getAllPriorities();
	
	Priority findById(Long id);

}