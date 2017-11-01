package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Status;

public interface IStatusService {

	/**
	 * add status
	 * 
	 * @param status
	 * @return
	 */
	Long add(Status status);

	/**
	 * delete status
	 * 
	 * @param id
	 */
	void delete(Long id);

	/**
	 * update status
	 * 
	 * @param status
	 */
	void update(Status status);

	/**
	 * get all status
	 * 
	 * @return
	 */
	List<Status> getAllStatus();

	/**
	 * recherche par id
	 * 
	 * @param id
	 * @return
	 */
	Status findById(Long id);

}