package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.Category;

public interface ICategoryService {

	/**
	 * add a Category
	 * 
	 * @param category
	 * @return
	 */
	Long add(Category category);

	/**
	 * delete category
	 * 
	 * @param id
	 */
	void delete(Long id);

	/**
	 * update category
	 * 
	 * @param category
	 */
	void update(Category category);

	/**
	 * getAll Category
	 * 
	 * @return
	 */
	List<Category> getAllCategories();

	/**
	 * recherche par id
	 * 
	 * @param id
	 * @return
	 */
	Category findById(Long id);

}