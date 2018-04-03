package com.sencerseven.blog.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.approval.UserApprovalHandler;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.InMemoryTokenStore;

@Configuration
public class OAuthServerConfigration {

	private static final String SERVER_RESOURCE_ID = "oauth2-server";

    private static InMemoryTokenStore tokenStore = new InMemoryTokenStore();


    @Configuration
    @EnableResourceServer
    protected static class ResourceServer extends ResourceServerConfigurerAdapter {

        @Override
        public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
            resources.resourceId(SERVER_RESOURCE_ID).stateless(false);
        }

        @Override
        public void configure(HttpSecurity http) throws Exception {
        	 http.anonymous().disable().requestMatchers().antMatchers("/api/**").and().authorizeRequests().antMatchers("/api/**").access("#oauth2.hasScope('read')");
        }
    }

    @Configuration
    @EnableAuthorizationServer
    protected static class AuthConfig extends AuthorizationServerConfigurerAdapter {
   
		@Autowired
		@Qualifier("authenticationManagerBean")
		private AuthenticationManager authenticationManager;


		@Override
		public void configure(AuthorizationServerEndpointsConfigurer endpoints)
				throws Exception {

			endpoints
				.tokenStore(tokenStore)
				.authenticationManager(this.authenticationManager);

		}

		@Override
		public void configure(ClientDetailsServiceConfigurer clients) throws Exception {

			clients.inMemory()
			.withClient("crmClient1")
			.secret("$2a$10$5OkeCLKNs/BkdO0qcYRri.MdIcKhFvElAllhPgLfRQqG7wkEiPmq2")
			.authorizedGrantTypes("client_credentials","password","refresh_token")
			.authorities("ROLE_CLIENT", "ROLE_TRUSTED_CLIENT")
			  .scopes("read", "write", "trust")
	          //.accessTokenValiditySeconds(ONE_DAY)
	          .accessTokenValiditySeconds(300)
	          .refreshTokenValiditySeconds(60)
						.resourceIds(SERVER_RESOURCE_ID);
			
		}

		
		
		
		@Override
		public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
			security
			.allowFormAuthenticationForClients();
			}

		
       
        
    }

}
