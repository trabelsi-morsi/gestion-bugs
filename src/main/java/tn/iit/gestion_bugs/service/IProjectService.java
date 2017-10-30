package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Project;

public interface IProjectService {

	Long add(Project project);

	/**
	 * Delete an existing project
	 * 
	 * @param id
	 *            Id of the project to delete
	 */

	void delete(Long id);

	/**
	 * Update the characteristics of an exciting project
	 * 
	 * @param project
	 *            The project instance to be updated
	 */

	void update(Project project);

	/**
	 * Get all the projects
	 * 
	 * @return List of all projects
	 */
	List<Project> getAllPriorities();

	/**
	 * Find a particular Project
	 * 
	 * @param id
	 *            The Id of the Project
	 * @return Project Instance
	 */
	Project findById(Long id);

}