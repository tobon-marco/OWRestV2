package com.marco.springboot.pojos;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="HEROES")
public class Hero
{
	//PRIVATE MEMBER FIELDS ====================================================
	@Id
	@Column(name="ID")
	private int id;
	
	@Column(name="NAME")
	private String name;
	
	@OneToMany(fetch = FetchType.EAGER,  cascade = CascadeType.ALL, mappedBy="herott")
	@PrimaryKeyJoinColumn
	private List<Abilities> myAbilities;
	
	@Column(name="HERO_TYPE")
	private int type;
	
	@Column(name="PICTURE")
	private String picture;

	//SETTERS AND GETTERS ================================================
	public final int getId()
	{
		return id;
	}

	public final void setId(int id)
	{
		this.id = id;
	}

	public final String getName()
	{
		return name;
	}

	public final void setName(String name)
	{
		this.name = name;
	}

	public final List<Abilities> getMyAbilities()
	{
		return myAbilities;
	}

	public final void setMyAbilities(List<Abilities> myAbilities)
	{
		this.myAbilities = myAbilities;
	}

	public final String getPicture()
	{
		return picture;
	}

	public final void setPicture(String picture)
	{
		this.picture = picture;
	}

	public final int getType()
	{
		return type;
	}

	public final void setType(int type)
	{
		this.type = type;
	}

	//CONSTRUCTOR =======================================================

	public Hero()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Hero(String name, List<Abilities> myAbilities, String picture, int type)
	{
		super();
		//this.id = id;
		this.name = name;
		this.myAbilities = myAbilities;
		this.picture = picture;
		this.type = type;
	}
}
