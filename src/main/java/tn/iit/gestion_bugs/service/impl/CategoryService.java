package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.iit.gestion_bugs.entities.Category;
import tn.iit.gestion_bugs.repository.CategoryRepository;
import tn.iit.gestion_bugs.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Transactional
	public Long add(Category category) {
		Category p = categoryRepository.saveAndFlush(category);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		Category p = categoryRepository.getOne(id);
		categoryRepository.delete(p);
	}

	@Transactional
	public void update(Category category) {
		categoryRepository.save(category);

	}

	public List<Category> getAllCategories() {
		return categoryRepository.findAll();
	}

	public Category findById(Long id) {
		return categoryRepository.getOne(id);
	}

}