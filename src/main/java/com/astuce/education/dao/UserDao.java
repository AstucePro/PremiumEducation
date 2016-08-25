package com.astuce.education.dao;

import com.astuce.education.form.StudentModel;
import com.astuce.education.model.User;

public interface UserDao {

	void saveStudent(StudentModel model);
	
	User findByUsername(String username);
	
}

