package com.marco.springboot.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ABILITIES")
public class Abilities
{
	//PRIVATE MEMBER FIELDS ====================================================
	@Id
	@Column(name="ID")
	private int id;
	
	@Column(name="AB_NAME")
	private String ab_name;
	
	@Column(name="ISULT")
	private String ult;
	
	@ManyToOne
	@JoinColumn(name="HERO_ID", nullable=false)
	private Hero herott;
	
	//SETTERS AND GETTERS ================================================
	public final int getId()
	{
		return id;
	}

	public String getAb_name() 
	{
		return ab_name;
	}

	public void setAb_name(String ab_name)
	{
		this.ab_name = ab_name;
	}

	public String getUlt() 
	{
		return ult;
	}

	public void setUlt(String ult) 
	{
		this.ult = ult;
	}

	//CONSTRUCTOR =======================================================


	public Abilities()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Abilities(int id, String ab_name, String ult, int heroId)
	{
		super();
		this.id = id;
		this.ab_name = ab_name;
		this.ult = ult;
	}

	@Override
	public String toString()
	{
		return "id=" + id + ", ab_name=" + ab_name + ", ult=" + ult;
	}
}