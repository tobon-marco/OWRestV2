package com.marco.springboot.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.marco.springboot.pojos.Hero;

@Repository
public interface HeroRepo extends JpaRepository<Hero, Integer>
{

}
