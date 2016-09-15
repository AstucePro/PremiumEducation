package com.astuce.education.form;

import com.astuce.education.model.Company;
import com.astuce.education.model.Recruiter;
import com.astuce.education.model.User;

public class CompanyModel {

	private User user;
	private Company company;
	private Recruiter recruiter;
	
	public CompanyModel() {
		super();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Recruiter getRecruiter() {
		return recruiter;
	}

	public void setRecruiter(Recruiter recruiter) {
		this.recruiter = recruiter;
	}
	
}
