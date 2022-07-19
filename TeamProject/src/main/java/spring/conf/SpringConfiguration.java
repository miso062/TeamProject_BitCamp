package spring.conf;

import java.io.IOException;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@PropertySource("classpath:spring/db.properties")
public class SpringConfiguration {

	private @Value("${jdbc.driver}") String driver;
	private @Value("${jdbc.url}") String url;
//	private String url = "jdbc:oracle:thin:@gese_high?TNS_ADMIN=";
	private @Value("${jdbc.username}") String username;
	private @Value("${jdbc.password}") String password;
	
	@Autowired
	private ApplicationContext context; // for wild-card
	
	@Bean
	public BasicDataSource dataSource() {
		
		String path = getClass().getResource("/").getPath();
		
		System.out.println(path);
		
		BasicDataSource bsSource = new BasicDataSource();
		bsSource.setDriverClassName(driver);
//		bsSource.setUrl(url+path+"Wallet_GESE");
		bsSource.setUrl(url);
		bsSource.setUsername(username);
		bsSource.setPassword(password);
	
		
		return bsSource;
	}
	
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("spring/mybatis-config.xml"));
		sqlSessionFactoryBean.setDataSource(this.dataSource());
		sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("admin/dao/adminMapper.xml"),
                                             new ClassPathResource("user/dao/userMapper.xml"),
                                             new ClassPathResource("main/dao/mainMapper.xml"),
											 new ClassPathResource("shop/dao/shopMapper.xml"));
		
		return sqlSessionFactoryBean.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception{
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(this.sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager() {
		DataSourceTransactionManager dataSourceTransactionManager
					= new DataSourceTransactionManager(this.dataSource());
		return dataSourceTransactionManager;
	}
}
