package com.innovatech;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 *
 * @author natha
 */
@Configuration
public class ProjectConfig implements WebMvcConfigurer {

    @Bean("messageSource")
    public MessageSource messageSource() {
        ResourceBundleMessageSource messageSource
                = new ResourceBundleMessageSource();
        messageSource.setBasename("messages");
        messageSource.setDefaultEncoding("UTF-8");
        return messageSource;
    }

    /* Los siguiente métodos son para implementar el tema de seguridad dentro del proyecto */
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/login").setViewName("login");
//        registry.addViewController("/registro/nuevo").setViewName("/registro/nuevo");
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests((request) -> request
                .requestMatchers(
                "/",
                "/index",
                "/errores/**",
                "/js/**",
                "/webjars/**"
                )
                .permitAll()
                .requestMatchers(
                "/categoria/**",
                "/marca/**",
                "/producto/**",
                "/sucursal/**",
                "/inventario/**",
                "/proveedor/**",
                "/empleado/**",
                "/productoProveedor/**",
                "/inicio-admin"
                )
                .hasAnyRole("ADMIN", "SALES")
            )
            .formLogin((form) -> form
                .loginPage("/login")
                .defaultSuccessUrl("/inicio-admin", true)
                .permitAll()
            )
            .logout((logout) -> logout.permitAll());


//        http.csrf().disable() // Desactiva CSRF
//            .authorizeHttpRequests((request) -> request.anyRequest().permitAll()); // Permite todo
        return http.build();
    }

    @Autowired
    private UserDetailsService userDetailsService;

// Descomentar para activar la encriptacion de contraseñas
//    @Autowired
//    public void configurerGlobal(
//            AuthenticationManagerBuilder build)
//            throws Exception {
//        build.userDetailsService(userDetailsService)
//                .passwordEncoder(new BCryptPasswordEncoder());
//    }
}
