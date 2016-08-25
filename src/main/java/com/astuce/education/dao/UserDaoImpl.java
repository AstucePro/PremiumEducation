package com.astuce.education.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.astuce.education.form.StudentModel;
import com.astuce.education.model.Situation;
import com.astuce.education.model.Student;
import com.astuce.education.model.User;


public class UserDaoImpl implements UserDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public void setEntityManager(EntityManager _entityManager) {
		this.entityManager = _entityManager;
	}

	@Override
	public void saveStudent(StudentModel model) {
		// TODO Auto-generated method stub
		User User = model.getUser();
		Student Student = model.getStudent();
		Situation Situation = model.getSituation();
		
	    Student.setUser(User);
		Situation.setStudent(Student);
		
		entityManager.persist(User);
		entityManager.persist(Student);
		entityManager.persist(Situation);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT u FROM User u WHERE u.username LIKE :username").setParameter("username", username) ;
		User user = (User) query.getSingleResult();
		return user;
	}

}
