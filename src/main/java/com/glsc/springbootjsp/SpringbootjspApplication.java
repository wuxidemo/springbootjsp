package com.glsc.springbootjsp;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.glsc.springbootjsp.mapper")
public class SpringbootjspApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootjspApplication.class, args);
    }
}
