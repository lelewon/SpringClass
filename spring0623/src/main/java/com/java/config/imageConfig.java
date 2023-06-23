package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration //IOC 컨테이너에 들어간다.
public class imageConfig implements WebMvcConfigurer{

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("images/**")
		.addResourceLocations("file:///c:/upload/");
	}
}
