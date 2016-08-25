package com.astuce.education.service;

import com.astuce.education.form.StudentModel;
import com.astuce.education.model.User;

public interface UserService {
	
	void saveStudent(StudentModel model);
	
	User findByUsername(String username);
}
