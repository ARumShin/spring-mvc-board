package org.spring.persistence;

import static org.junit.Assert.fail;
import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;
import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try(Connection con = 
			DriverManager.getConnection("jdbc:mysql://34.64.124.138:3306/webshoppingdb","gms1022","q1w2e3!@")){
			log.info(con);
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}
	
}
