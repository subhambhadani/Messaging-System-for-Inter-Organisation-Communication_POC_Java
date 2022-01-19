package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmailController {

	@Autowired
	private UserRepository repository;

	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String EmailPage() {
		System.out.println("in email page");
		return "email";
	}

	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String SaveData(User user) {
		repository.save(user);
		System.out.println("from is :" + user.getFrom() + ", to is : " + user.getTo() + " , cc is : " + user.getCc()
				+ " , subject is : " + user.getSubject() + " and body is : " + user.getBody());
		sendEmail(user);
		return "success";
	}

	@Autowired
	JavaMailSender javaMailSender;

	public String sendEmail(User user) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(user.getFrom());
		message.setTo(user.getTo());
		message.setCc(user.getCc());
		message.setSubject(user.getSubject());
		message.setText(user.getBody());
		javaMailSender.send(message);
		System.out.println("Mail sent successfully");
		return "Mail sent successfully";
	  
	  
	  
	  
	  }
	 
}
