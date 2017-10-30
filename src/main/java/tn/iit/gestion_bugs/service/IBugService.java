package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Bug;

public interface IBugService {

	/**
	 * add new bug
	 * 
	 * @param bug
	 *            to add
	 * @return id of the bug
	 */
	Long add(Bug bug);

	/**
	 * delete a bug
	 * 
	 * @param id
	 *            of the bug
	 */
	void delete(Long id);

	/**
	 * edit an existing bug
	 * 
	 * @param bug
	 *            to edit
	 */
	void update(Bug bug);

	/**
	 * list all existing bugs
	 * 
	 * @return all bugs
	 */
	List<Bug> getAllBugs();

	/**
	 * find a bug by id
	 * 
	 * @param id
	 *            of the bug
	 * @return bug
	 */
	Bug findById(Long id);
}
