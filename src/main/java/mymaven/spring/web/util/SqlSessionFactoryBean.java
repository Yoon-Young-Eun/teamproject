package mymaven.spring.web.util;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//MyBatis로 DAO 클래스의 CRUD를 구현하려면 MyBatis에서 제공하는 SqlSession 객체를 사용해야 한다. 
//그런데 SqlSession 객체는 SqlSessionFactory로부터 얻어야 하므로 가장 먼저 SqlSessionFactory 객체를 생성해야 한다. 
//SqlSessionFactory 객체를 생성하려면 SqlSessionFactoryBuilder의 build() 메서드를 이용하는데 
//build() 메서드는 MyBatis 설정파일(mybatis-config)를 로딩하여 SqlSessionFactory 객체를 생성한다. 
//그리고 mybatis-config.xml 파일을 로딩하려면 입력 스트림인 Reader 객체가 필요하다. 
//Reader 객체는 Resources 클래스의 getResourceAsReader() 메서드를 사용하여 얻어낼 수 있다.

public class SqlSessionFactoryBean {
	private static SqlSessionFactory sessionFactory = null;
	static {
		try {
			if (sessionFactory == null) {
				Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
				sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SqlSession getSqlSessionInstance() {
	    // SqlSessionFactory 객체는 openSession()이라는 메서드를 제공하며 이 메서드를 이용해서 SqlSession 객체를 얻을 수 있다.
		return sessionFactory.openSession();
	}
}