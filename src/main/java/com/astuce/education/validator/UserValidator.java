package com.astuce.education.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.astuce.education.form.StudentModel;
import com.astuce.education.service.UserService;



@Component
public class UserValidator implements Validator {
	
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return StudentModel.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        StudentModel studentModel = (StudentModel) o;
        
        // STUDENT
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.civilite", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.firstname", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.lastname", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.birthDay", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.address", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.city", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.country", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.zipcode", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "student.cellphone", "NotEmpty");
        
        // USER

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user.username", "NotEmpty");
        if (studentModel.getUser().getUsername().length() < 6 || studentModel.getUser().getUsername().length() > 32) {
            errors.rejectValue("user.username", "Size.userForm.username");
        }
        if (userService.findByUsername(studentModel.getUser().getUsername()) != null) {
            errors.rejectValue("user.username", "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user.password", "NotEmpty");
        if (studentModel.getUser().getPassword().length() < 8 || studentModel.getUser().getPassword().length() > 32) {
            errors.rejectValue("user.password", "Size.userForm.password");
        }

        if (!studentModel.getUser().getPasswordConfirm().equals(studentModel.getUser().getPassword())) {
            errors.rejectValue("user.passwordConfirm", "Diff.userForm.passwordConfirm");
        }
        
        // SITUATION
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "situation.degree", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "situation.school", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "situation.discipline", "NotEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "situation.professionnal_wish", "NotEmpty");
    }
}
