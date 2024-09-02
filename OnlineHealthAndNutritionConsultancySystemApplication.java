package com.klef.jfsd.sdp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.klef.jfsd.sdp.controller","com.klef.jfsd.sdp.model","com.klef.jfsd.sdp.service","com.klef.jfsd.sdp.repository","com.klef.jfsd.sdp","com.klef.jfsd.sdp.service.AdminService"})

public class OnlineHealthAndNutritionConsultancySystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineHealthAndNutritionConsultancySystemApplication.class, args);
		System.out.println("It's Working!!");
	}

}
