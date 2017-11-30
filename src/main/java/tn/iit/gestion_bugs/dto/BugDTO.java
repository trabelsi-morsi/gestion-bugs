package tn.iit.gestion_bugs.dto;

import java.util.Date;
import java.util.List;

import tn.iit.gestion_bugs.entities.Bug;
import tn.iit.gestion_bugs.entities.ScreenShot;

public class BugDTO {

	private Long id;
	private String description;
	private String productVersion;
	private String detailSteps;
	private Date dateRaised;
	private Date dateClosed;
	private String feedback;
	private boolean isDeleted;
	private String testerName;
	private String developerName;
	private String category;
	private String severity;
	private String priority;
	private String colorPriority;
	private String project;
	private String status;
	private List<ScreenShot> screenShots;

	public static BugDTO convertToDTO(Bug bug) {
		BugDTO b = new BugDTO();
		b.setId(bug.getId());
		b.setDateClosed(bug.getDateClosed());
		b.setDescription(bug.getDescription());
		b.setProductVersion(bug.getProductVersion());
		b.setDetailSteps(bug.getDetailSteps());
		b.setDateRaised(bug.getDateRaised());
		b.setFeedback(bug.getFeedback());
		b.setDeleted(bug.isDeleted());
		b.setDeveloperName(bug.getUser().getName());
		b.setCategory(bug.getCategory().getTitle());
		b.setPriority(bug.getPriority().getTitle());
		b.setColorPriority(bug.getPriority().getColor());
		b.setProject(bug.getProject().getTitle());
		b.setStatus(bug.getStatus().getTitle());
		b.setSeverity(bug.getSeverity().getTitle());
		b.setScreenShots(bug.getScreenShots());

		return b;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProductVersion() {
		return productVersion;
	}

	public void setProductVersion(String productVersion) {
		this.productVersion = productVersion;
	}

	public String getDetailSteps() {
		return detailSteps;
	}

	public void setDetailSteps(String detailSteps) {
		this.detailSteps = detailSteps;
	}

	public Date getDateRaised() {
		return dateRaised;
	}

	public void setDateRaised(Date dateRaised) {
		this.dateRaised = dateRaised;
	}

	public Date getDateClosed() {
		return dateClosed;
	}

	public void setDateClosed(Date dateClosed) {
		this.dateClosed = dateClosed;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getTesterName() {
		return testerName;
	}

	public void setTesterName(String testerName) {
		this.testerName = testerName;
	}

	public String getDeveloperName() {
		return developerName;
	}

	public void setDeveloperName(String developerName) {
		this.developerName = developerName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSeverity() {
		return severity;
	}

	public void setSeverity(String severity) {
		this.severity = severity;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<ScreenShot> getScreenShots() {
		return screenShots;
	}

	public void setScreenShots(List<ScreenShot> screenShots) {
		this.screenShots = screenShots;
	}

	public String getColorPriority() {
		return colorPriority;
	}

	public void setColorPriority(String colorPriority) {
		this.colorPriority = colorPriority;
	}

}
