package com.sencerseven.blogbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan("com.sencerseven.blogbackend.dto")
@EnableTransactionManagement
public class HibernateConfig {
	
	private static String DATABASE_URL = "jdbc:h2:tcp://localhost/~/sencersevenblog";
	private static String DATABASE_DRIVER = "org.h2.Driver";
	private static String DATABASE_USER = "sa";
	private static String DATABASE_PASSWORD = "";
	
	@Bean
	public DataSource dataSource() {
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(DATABASE_DRIVER);
		basicDataSource.setUrl(DATABASE_URL);
		basicDataSource.setUsername(DATABASE_USER);
		basicDataSource.setPassword(DATABASE_PASSWORD);
		
		basicDataSource.setMinIdle(2);
		basicDataSource.setMaxIdle(20);
		basicDataSource.setMinIdle(30000);
		
		return basicDataSource;
		
	}
	
	@Bean
	public SessionFactory sessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionFactoryBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionFactoryBuilder.addProperties(properties());
		sessionFactoryBuilder.scanPackages("com.sencerseven.blogbackend");
		return sessionFactoryBuilder.buildSessionFactory();
	}
	
	private Properties properties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.show_sql", true);
		properties.put("hibernate.format_sql", true);
		properties.put("hibernate.hbm2ddl.auto", "update");
		
		return properties;
	}
	
	@Bean
	public HibernateTransactionManager hibernateTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
		hibernateTransactionManager.setSessionFactory(sessionFactory);
		return hibernateTransactionManager;
	}

}
