package com.marco.springboot.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.marco.springboot.pojos.Hero;

@Repository
public interface HeroRepo extends JpaRepository<Hero, Integer>
{

	@Query("Select p FROM HERO WHERE LOWER(p.name) = LOWER(:heroName)")
	public Hero findByName (@Param("heroName") String heroName);
	
}
