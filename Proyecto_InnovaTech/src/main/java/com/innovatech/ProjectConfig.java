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
                "/carrito/**",
                "/pruebas/**",
                "/reportes/**",
                "/registro/**",
                "/js/**",
                "/webjars/**"
                )
                .permitAll()
                .requestMatchers(
                "/producto/nuevo",
                "/producto/guardar",
                "/producto/modificar/**",
                "/producto/eliminar/**",
                "/categoria/nuevo", 
                "/categoria/guardar",
                "/categoria/modificar/**", 
                "/categoria/eliminar/**",
                "/usuario/nuevo", 
                "/usuario/guardar",
                "/usuario/modificar/**", 
                "/usuario/eliminar/**",
                "/reportes/**"
                )
                .hasRole("ADMIN")
                .requestMatchers(
                "/producto/listado",
                "/categoria/listado",
                "/usuario/listado"
                )
                .hasAnyRole("ADMIN", "VENDEDOR")
            )
            .formLogin((form) -> form
                .loginPage("/login")
                .defaultSuccessUrl("/index", true)
                .permitAll()
            )
            .logout((logout) -> logout.permitAll());
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
