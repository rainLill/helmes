package com.trial.to.helmes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class HelmesApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelmesApplication.class, args);
    }

}
