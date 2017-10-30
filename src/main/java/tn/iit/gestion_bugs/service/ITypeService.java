package tn.iit.gestion_bugs.service;

import java.util.List;
 
import tn.iit.gestion_bugs.entities.Type;

public interface ITypeService {

	/**
	 * Add a Type
	 * @param type
	 * @return
	 */
	Long add(Type type);

	/**
	 * Remove type by id
	 * @param id
	 */
	void delete(Long id);

	/**
	 * Edit a type
	 * @param type
	 */
	void update(Type type);

	/**
	 * Get all users
	 * @return
	 */
	List<Type> getAllType();
	
	
	/**
	 * Get  type by id
	 * @param id
	 * @return
	 */
	Type findById(Long id);

}