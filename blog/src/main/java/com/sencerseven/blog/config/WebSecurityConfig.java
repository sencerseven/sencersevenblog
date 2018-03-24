package com.sencerseven.blog.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.GlobalAuthenticationConfigurerAdapter;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig{

	
	@Bean
	public static BCryptPasswordEncoder bCryptPasswordEncoder(){
		return new BCryptPasswordEncoder();
	}
	
	
	@Configuration
	@Order(1)
	public static class AdminLoginConfig extends WebSecurityConfigurerAdapter{	
		@Autowired
		DataSource dataSource;
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			
			auth.jdbcAuthentication().dataSource(dataSource)
			.usersByUsernameQuery("Select email,password,enabled from User where role='ADMIN' and email = ? ")
			.authoritiesByUsernameQuery("Select email, role from User where email = ?").passwordEncoder(bCryptPasswordEncoder());
		}

		@Override
		protected void configure(HttpSecurity http) throws Exception {
			
			http
			.authorizeRequests().antMatchers("/admin/login").permitAll().and()
			.antMatcher("/admin/**").authorizeRequests().anyRequest().hasAuthority("ADMIN")
			.and()
			.formLogin().loginPage("/admin/login").usernameParameter("email").passwordParameter("password").defaultSuccessUrl("/admin", true).loginProcessingUrl("/admin/login")
			.and()
			.logout()
			.and()
			.exceptionHandling().accessDeniedPage("/");
			
		}
	}
	
	@Configuration
	public static class HomeLoginConfig extends WebSecurityConfigurerAdapter{		
		@Autowired
		DataSource dataSource;
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			
			auth.jdbcAuthentication().dataSource(dataSource)
			.usersByUsernameQuery("Select email,password,enabled from User where email = ? ")
			.authoritiesByUsernameQuery("Select email, role from User where email = ?").passwordEncoder(bCryptPasswordEncoder());
		}
		
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			
			http.authorizeRequests().antMatchers("/profile").hasAnyAuthority("ADMIN","USER").and()
			.authorizeRequests()
			.antMatchers("/**").permitAll().and()
			.formLogin().loginPage("/login").usernameParameter("email").passwordParameter("password").defaultSuccessUrl("/", true).loginProcessingUrl("/login")
			.and()
			.logout()
			.and()
			.exceptionHandling().accessDeniedPage("/w");
			
		
			
		}
	}
	

	
	
}
