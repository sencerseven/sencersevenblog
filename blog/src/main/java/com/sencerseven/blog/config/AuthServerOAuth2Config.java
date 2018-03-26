package com.sencerseven.blog.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.approval.UserApprovalHandler;
import org.springframework.security.oauth2.provider.token.TokenStore;
/*
@Configuration
@EnableAuthorizationServer
public class AuthServerOAuth2Config extends AuthorizationServerConfigurerAdapter{

	private static final String SERVER_RESOURCE_ID = "oauth2-server";
	
	private static String REALM="CRM_REALM";
	private static final int ONE_DAY = 60 * 60 * 24;
	private static final int THIRTY_DAYS = 60 * 60 * 24 * 30; 
	private static final int SECOND = 15;
	@Autowired
	private TokenStore tokenStore;
	
	@Autowired
	private UserApprovalHandler userApprovalHandler;
 
	@Autowired
	@Qualifier("authenticationManagerBean")
	private AuthenticationManager authenticationManager;
	
	@Override
	public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
		security.realm(REALM);
	}

	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients.inMemory()
		.withClient("crmClient1")
		.secret("$2a$10$5OkeCLKNs/BkdO0qcYRri.MdIcKhFvElAllhPgLfRQqG7wkEiPmq2")
		.authorizedGrantTypes("password","refresh_token")
		.authorities("ROLE_CLIENT", "ROLE_TRUSTED_CLIENT","ADMIN","ROLE_ADMIN")
		  .scopes("read", "write", "trust")
          //.accessTokenValiditySeconds(ONE_DAY)
          .accessTokenValiditySeconds(300)
          .refreshTokenValiditySeconds(SECOND);
	}

	@Override
	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
		endpoints.tokenStore(tokenStore).userApprovalHandler(userApprovalHandler)
		.authenticationManager(authenticationManager);
	}

}
*/