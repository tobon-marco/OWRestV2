package com.marco.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class OwApiApp {

	public static void main(String[] args) {
		// RUN APPLICATION WITH CLASS THAT HAS THE RUN METHOD
		// Static method
			// Sets up default configuration
			// Starts Spring Application Context
			// Class Path Scan
				// Looks for annotations that spring can use
			// Starts Tomcat
		SpringApplication.run(OwApiApp.class, args);
	}

}
