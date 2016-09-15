package com.astuce.education;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.astuce.education.mailing.EmailAPI;

public class MailTest {
	 
	@SuppressWarnings("resource")
	public static void main(String args[]) {
	 
		// Spring Bean file you specified in /src/main/resources folder
		String crunchifyConfFile = "appconfig-mail.xml";
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext(crunchifyConfFile);
	 
		// @Service("crunchifyEmail") <-- same annotation you specified in CrunchifyEmailAPI.java
		EmailAPI EmailAPI = (EmailAPI) context.getBean("emailAPI");
		String toAddr = "shameh@outlook.fr";
	 
		// email body
		String body = "Bonjour Oscar KOWU, nous vous confirmons votre inscription sur notre plateforme Premium Educatin";
		EmailAPI.registrationEmail(toAddr, body);
	}
}
