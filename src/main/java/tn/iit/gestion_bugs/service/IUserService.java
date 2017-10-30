package tn.iit.gestion_bugs.service;

import java.util.List;
 
import tn.iit.gestion_bugs.entities.User;

public interface IUserService {

	/**
	 *  Add a user
	 * @param user
	 * @return
	 */
	Long add(User user);

	/**
	 * Remove user by id
	 * @param id
	 */
	void delete(Long id);

	/**
	 * Edit a user
	 * @param user
	 */
	void update(User user);

	/**
	 * Get all users
	 * @return
	 */
	List<User> getAllUsers();
	
	/**
	 * Get  user by id
	 * @param id
	 * @return
	 */
	User findById(Long id);

}