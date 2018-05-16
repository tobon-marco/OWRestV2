package com.marco.springboot.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.marco.springboot.pojos.Hero;
import com.marco.springboot.service.HeroService;

@RestController
public class HeroController {
	
	HeroService heroServ = new HeroService();
	
	//ALL HEROES
	@RequestMapping("/heroes")
	public List<Hero> getHeroes()
	{
		System.out.println("Test");
		List<Hero> hrs = heroServ.getAllHeroes();
		return hrs;
	}
	
	@RequestMapping("/heroes/{heroName}")
	//HERO BY NAME
	public Hero getHeroOnName (@PathVariable String heroName)
	{
		Hero hr = heroServ.getHeroOnName(heroName);
		return hr;
	}
	
}
