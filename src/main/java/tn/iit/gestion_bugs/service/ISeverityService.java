package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Severity;

public interface ISeverityService {
	/**
	 * Add new severity
	 * 
	 * @param severity
	 *            The severity instance to be added
	 * @return Id of the added severity
	 */
	Long add(Severity severity);

	/**
	 * Delete an existing severity
	 * 
	 * @param id
	 *            Id of the severity to delete
	 */
	void delete(Long id);

	/**
	 * Update the characteristics of an exciting severity
	 * 
	 * @param severity
	 *            The severity instance to be updated
	 */
	void update(Severity severity);

	/**
	 * Get all the severities
	 * 
	 * @return List of Severity
	 */
	List<Severity> getAllPriorities();

	/**
	 * Find a particular severity
	 * 
	 * @param id
	 *            The Id of the severity
	 * @return Severity Instance
	 */
	Severity findById(Long id);

}