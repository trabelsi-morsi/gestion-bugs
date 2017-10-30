package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tn.iit.gestion_bugs.entities.Type;
import tn.iit.gestion_bugs.repository.TypeRepository;
import tn.iit.gestion_bugs.service.ITypeService;

@Service
public class TypeService implements ITypeService {

	@Autowired
	private TypeRepository userRepository;

	@Transactional
	public Long add(Type type) {
		Type p = userRepository.saveAndFlush(type);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		Type p = userRepository.getOne(id);
		userRepository.delete(p);
	}

	@Transactional
	public void update(Type type) {
		userRepository.save(type);

	}

	public List<Type> getAllType() {
		return userRepository.findAll();
	}

	
	public Type findById(Long id) {
		return userRepository.getOne(id);
	}

}