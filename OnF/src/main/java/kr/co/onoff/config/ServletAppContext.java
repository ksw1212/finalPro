package kr.co.onoff.config;

import java.util.Properties;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.onoff.beans.UserBean;
import kr.co.onoff.mapper.UserMapper;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "kr.co.onoff.controller")
@ComponentScan("kr.co.onoff.dao")
@ComponentScan("kr.co.onoff.service")
@PropertySource("WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	
	@Value("${db.classname}")
    private String db_classname;
    @Value("${db.url}")
    private String db_url;
    @Value("${db.username}")
    private String db_username;
    @Value("${db.password}")
    private String db_password;
    
    @Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	//controller의 메서드가 반환하는 결과값을 view로 보낼대 지정되어지는 경로 구현
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
		
	}
	//정적 파일의 졍로 지정
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
		//어디에 있던지 리소스만 있으면 됩니다.
	}
	@Bean
	 public BasicDataSource dataSource() {
		 BasicDataSource source = new BasicDataSource();
		 source.setDriverClassName(db_classname);
	     source.setUrl(db_url);
	     source.setUsername(db_username);
	     source.setPassword(db_password);
	     return source;
	 }
	 
   @Bean
   public SqlSessionFactory factory(BasicDataSource source) throws Exception{
	    SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
       factoryBean.setDataSource(source);
       SqlSessionFactory factory = factoryBean.getObject();
       return factory;
   }
   @Bean
   public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory) throws Exception{
       MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
       factoryBean.setSqlSessionFactory(factory);
       return factoryBean;
   }
   
}
