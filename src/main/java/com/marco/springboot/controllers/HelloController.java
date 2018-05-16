package com.marco.springboot.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.marco.springboot.service.HeroService;

//This class is now a rest controller from Spring MVC
@RestController
public class HelloController {
	
	@Autowired
	private HeroService heroServ;
	
	//Mapped to all requests GET, PUT, POST, DELETE 
	@RequestMapping("/hello")
	public String sayHi()
	{
		
		System.out.println(heroServ.getAllHeroes().toString());
		return "Hi";
	}
	
	
}
