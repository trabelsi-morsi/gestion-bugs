package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Priority;

public interface IPriorityService {

	/**
	 * Add a priority
	 * 
	 * @param priority
	 * @return id of the added priority
	 */
	Long add(Priority priority);

	/**
	 * delete priority by id
	 * 
	 * @param id
	 *            of the priority to delete
	 */
	void delete(Long id);

	/**
	 * update a priority
	 * 
	 * @param priority
	 */
	void update(Priority priority);

	/**
	 * get all priorities
	 * 
	 * @return all priorities
	 */
	List<Priority> getAllPriorities();

	/**
	 * 
	 * @param id
	 *            of the priority
	 * @return priority
	 */
	Priority findById(Long id);

}