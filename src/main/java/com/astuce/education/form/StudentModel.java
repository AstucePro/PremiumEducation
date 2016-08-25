package com.astuce.education.form;

import com.astuce.education.model.Situation;
import com.astuce.education.model.Student;
import com.astuce.education.model.User;

public class StudentModel {
	
	private User user;
	private Student student;
	private Situation situation;

	public StudentModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Situation getSituation() {
		return situation;
	}

	public void setSituation(Situation situation) {
		this.situation = situation;
	}


}
