package com.marco.springboot.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.marco.springboot.pojos.Topic;

//Business Service
//Singletons

@Service
public class TopicService {

	List<Topic> topics = Arrays.asList(
			new Topic("spring", "Springframework", "Springframewokr description"),
			new Topic("angualr", "Angualr", "Angular description"),
			new Topic("react", "Reactjs", "React js description")
		);
	
	public List<Topic> getAllTopics ()
	{
		return topics;
	}
	
	public Topic getTopic (String id)
	{
		return topics.stream().filter(t -> t.getId().equals(id)).findFirst().get();
	}
}
