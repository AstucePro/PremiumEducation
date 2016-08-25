package com.astuce.education.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.astuce.education.dao.UserDao;
import com.astuce.education.form.StudentModel;
import com.astuce.education.model.Role;
import com.astuce.education.model.User;
import com.astuce.education.repository.RoleRepository;
import com.astuce.education.repository.UserRepository;


@Service
@Transactional
public class UserServiceImpl implements UserService {
	
    @Autowired
    private UserDao userDao;
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private RoleRepository roleRepository;
    
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

	@SuppressWarnings("unchecked")
	@Override
	public void saveStudent(StudentModel model) {
		// TODO Auto-generated method stub
        model.getUser().setPassword(bCryptPasswordEncoder.encode(model.getUser().getPassword()));
        List<Role> role= new ArrayList<Role>();
        role.add(roleRepository.findOne((long) 3));
        model.getUser().setRoles(new HashSet<Role>(role));
        
        Set<Role> r = model.getUser().getRoles();
        
        for (Role roles : r) {
        	System.out.println(roles.getName());
        }
        userDao.saveStudent(model);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(username);
	}
}
