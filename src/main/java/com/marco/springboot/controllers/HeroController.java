package com.marco.springboot.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.marco.springboot.pojos.Hero;
import com.marco.springboot.repos.HeroRepo;

@RestController
public class HeroController {
	
	@Autowired 
	HeroRepo repo;
	
	//ALL HEROES
	@RequestMapping("/heroes")
	public List<Hero> getHeroes()
	{
		System.out.println("Test");
		List<Hero> hrs = repo.findAll();
		return hrs;
	}
	
	@RequestMapping("/heroes/{heroName}")
	//HERO BY NAME
	public Hero getHeroOnName (@PathVariable String heroName)
	{
		//Hero hr = repo;
		//return hr;
		return null;
	}
	
}
