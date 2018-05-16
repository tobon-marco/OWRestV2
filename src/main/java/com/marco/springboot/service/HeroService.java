package com.marco.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.marco.springboot.model.DAOHero;
import com.marco.springboot.pojos.Hero;

@Service
public class HeroService
{
	public static DAOHero heroDAO = new DAOHero();

	public List<Hero> getAllHeroes()
	{
		return heroDAO.getAllHeroes();
	}

	public Hero getHeroOnName(String name)
	{
		Hero obj = heroDAO.getHeroesOnName(name);
		if (obj == null)
			return new Hero();
		else 
			return obj;
	}
}