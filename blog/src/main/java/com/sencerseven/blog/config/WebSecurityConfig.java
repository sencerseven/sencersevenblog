package com.sencerseven.blog.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.GlobalAuthenticationConfigurerAdapter;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.approval.ApprovalStore;
import org.springframework.security.oauth2.provider.approval.TokenApprovalStore;
import org.springframework.security.oauth2.provider.approval.TokenStoreUserApprovalHandler;
import org.springframework.security.oauth2.provider.request.DefaultOAuth2RequestFactory;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.InMemoryTokenStore;

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
			.exceptionHandling().accessDeniedPage("/").and().csrf();
			
		}
	}
	
	@Configuration
	@Order(2)
	public static class ApiLoginConfig extends WebSecurityConfigurerAdapter{	
		@Autowired
		DataSource dataSource;
		
		@Autowired
		ClientDetailsService clientDetailsService;
		
		
		 

		 @Override
		    protected void configure(HttpSecurity http) throws Exception {
		        http.csrf().disable().antMatcher("/oauth/token").authorizeRequests().anyRequest().permitAll();
		        
		                
		    }

		    
		    @Autowired
		    public void globalUserDetails(AuthenticationManagerBuilder auth) throws Exception {
		    	auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("Select user_name,password,enabled from User where user_name = ? ")
				.authoritiesByUsernameQuery("Select user_name, role from User where user_name = ?").passwordEncoder(bCryptPasswordEncoder());
		    }
		 
		    
		    
	    @Override
	    @Bean
	    public AuthenticationManager authenticationManagerBean() throws Exception {
	        return super.authenticationManagerBean();
	    }
	 
		@Bean
		public TokenStore tokenStore() {
			return new InMemoryTokenStore();
		}
	 
		@Bean
		@Autowired
		public TokenStoreUserApprovalHandler userApprovalHandler(TokenStore tokenStore){
			TokenStoreUserApprovalHandler handler = new TokenStoreUserApprovalHandler();
			handler.setTokenStore(tokenStore);
			handler.setRequestFactory(new DefaultOAuth2RequestFactory(clientDetailsService));
			handler.setClientDetailsService(clientDetailsService);
			return handler;
		}
		
		@Bean
		@Autowired
		public ApprovalStore approvalStore(TokenStore tokenStore) throws Exception {
			TokenApprovalStore store = new TokenApprovalStore();
			store.setTokenStore(tokenStore);
			return store;
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
			.exceptionHandling().accessDeniedPage("/w").and().csrf();
			
		
			
		}
	}
	

	
	
}
