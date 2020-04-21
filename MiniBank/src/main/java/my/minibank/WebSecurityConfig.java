package my.minibank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages={"my.minibank"})
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private UserDetailsService userDetailsService;

	@Bean(name="passwordEncoder")
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
//		auth.inMemoryAuthentication()
//        	.withUser("user").password(passwordEncoder().encode("user")).roles("USER")
//        	.and()
//        	.withUser("admin").password(passwordEncoder().encode("admin")).roles("USER", "ADMIN");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
		.authorizeRequests()
			.antMatchers("/home/**").permitAll()
			//.antMatchers("/home").hasRole("ADMIN")
			//.antMatchers("/home").hasAnyRole("ADMIN", "USER")
			.antMatchers("/home/**").authenticated()
			.antMatchers("/voucher/**").authenticated()
			.antMatchers("/telepon/**").authenticated()
			.antMatchers("/transaksi/**").authenticated()
			.antMatchers("/tagihan/**").authenticated()
			.and()
		.formLogin()
			.loginPage("/login").failureUrl("/login?error")
			.defaultSuccessUrl("/home", true)
			.permitAll()
			.and()
		.logout()
			.logoutSuccessUrl("/login?logout")
			.permitAll()
			.and()
		.exceptionHandling()
			.accessDeniedPage("/denied")
			.and()
		.csrf().disable();

//		http.sessionManagement()
//			.maximumSessions(1)
//			.maxSessionsPreventsLogin(true)
//			.expiredUrl("/login?error=You are already logged in from somewhere");
	}

}
