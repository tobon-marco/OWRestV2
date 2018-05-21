//package com.marco.springboot.controllers;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.marco.springboot.pojos.Topic;
//import com.marco.springboot.service.TopicService;
//
////Because its a rest controller it will return object as JSON automatically
//@RestController
//public class TopicController {
//
//	@Autowired
//	private TopicService topicService;
//	
//	@RequestMapping("/topics")
//	public List<Topic> getAllTopics()
//	{
//		return topicService.getAllTopics();
//	}
//	
//	@RequestMapping("/topics/{id}")
//	public Topic getTopic (@PathVariable String id)
//	{
//		return topicService.getTopic(id);
//	}
//	
//}
