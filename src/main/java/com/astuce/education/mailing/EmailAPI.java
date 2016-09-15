package com.astuce.education.mailing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service("emailAPI")
public class EmailAPI {
	
	@Autowired
	private MailSender mailSender;
	
	public void registrationEmail(String toAdress, String body) {
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("kowuoscar@gmail.com");
		message.setTo(toAdress);
		message.setSubject("Validation de votre compte PremiumEducation");
		message.setText(body);
		mailSender.send(message);
	}

}
