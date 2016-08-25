package com.astuce.education.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.astuce.education.form.StudentModel;
import com.astuce.education.security.SecurityService;
import com.astuce.education.service.UserService;
import com.astuce.education.validator.UserValidator;


@Controller
public class UserController {
	
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration/student", method = RequestMethod.GET)
    public String studentRegistration(Model model) {
        model.addAttribute("userForm", new StudentModel());

        return "registration/student";
    }

    @RequestMapping(value = "/registration/student", method = RequestMethod.POST)
    public String studentRegistration(@ModelAttribute("userForm") StudentModel userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration/student";
        }

        userService.saveStudent(userForm);

        securityService.autologin(userForm.getUser().getUsername(), userForm.getUser().getPasswordConfirm());

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }
}
