package tn.iit.gestion_bugs.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import tn.iit.gestion_bugs.entities.ScreenShot;
import tn.iit.gestion_bugs.repository.ScreenShotRepository;
import tn.iit.gestion_bugs.service.IScreenShotService;

@Component
public class ScreenShotService implements IScreenShotService {

	@Autowired
	private ScreenShotRepository screenShotRepository;

	@Transactional
	public Long add(ScreenShot screenShot) {
		ScreenShot p = screenShotRepository.saveAndFlush(screenShot);
		return p.getId();
	}

	@Transactional
	public void delete(Long id) {
		ScreenShot p = screenShotRepository.getOne(id);
		screenShotRepository.delete(p);
	}

	@Transactional
	public void update(ScreenShot screenShot) {
		screenShotRepository.save(screenShot);

	}

	public List<ScreenShot> getAllScreenShots() {
		return screenShotRepository.findAll();
	}

	public ScreenShot findById(Long id) {
		return screenShotRepository.getOne(id);
	}

}