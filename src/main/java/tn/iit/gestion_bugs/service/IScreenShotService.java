package tn.iit.gestion_bugs.service;

import java.util.List;

import tn.iit.gestion_bugs.entities.ScreenShot;

public interface IScreenShotService {

	/**
	 * Add a Screen shot
	 * 
	 * @param screenShot
	 * @return id of the added screenShot
	 */
	Long add(ScreenShot priority);

	/**
	 * delete screenShot by id
	 * 
	 * @param id
	 *            of the screenShot to delete
	 */
	void delete(Long id);

	/**
	 * update a screenShot
	 * 
	 * @param screenShot
	 */
	void update(ScreenShot screenShot);

	/**
	 * get all ScreenShots
	 * 
	 * @return all ScreenShots
	 */
	List<ScreenShot> getAllScreenShots();

	/**
	 * 
	 * @param id
	 *            of the screen shot
	 * @return ScreenShot
	 */
	ScreenShot findById(Long id);

}