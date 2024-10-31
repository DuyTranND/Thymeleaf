package vn.iotstar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import vn.iotstar.configs.MySiteMeshFilter;

@SpringBootApplication
public class Demo5Springboot3Application {

	public static void main(String[] args) {
		SpringApplication.run(Demo5Springboot3Application.class, args);
	}
	
	@Bean
	public FilterRegistrationBean<MySiteMeshFilter> siteMeshFiller(){
		FilterRegistrationBean<MySiteMeshFilter> filterRegistraionBean = new FilterRegistrationBean<MySiteMeshFilter>();
		filterRegistraionBean.setFilter(new MySiteMeshFilter());
		filterRegistraionBean.addUrlPatterns("/*");
		return filterRegistraionBean;
	}
}
