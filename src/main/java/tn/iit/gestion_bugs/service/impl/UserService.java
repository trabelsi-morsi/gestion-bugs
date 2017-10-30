package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tn.iit.gestion_bugs.entities.User;
import tn.iit.gestion_bugs.repository.UserRepository;
import tn.iit.gestion_bugs.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserRepository userRepository;

	
	@Transactional
	public Long add(User user) {
		User p = userRepository.saveAndFlush(user);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		User p = userRepository.getOne(id);
		userRepository.delete(p);
	}

	@Transactional
	public void update(User user) {
		userRepository.save(user);

	}

	public List<User> getAllUsers() {
		return userRepository.findAll();
	}

	public User findById(Long id) {
		return userRepository.getOne(id);
	}

}