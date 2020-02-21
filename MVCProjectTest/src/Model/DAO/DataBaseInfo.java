package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseInfo {

	static String jdbcDriver;
	static String jdbcUrl;
	static Connection conn;
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;
	/* LibraryBoardDAO(){    생성자를 이용하여 초기화할수있음 ..
	 *  jdbcDriver = "oracle.jdbc.driver.OracleDriver"; jdbcUrl =
	 * "jdbc:oracle:thin:@localhost:1521:XE"; }
	 */
	static {// static 객체가 생성될때 자동으로 초기화되게 할수있다. 객체 초기화  개발자 규칙임...!!
		jdbcDriver = "oracle.jdbc.driver.OracleDriver";
		jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE"; //DB이름이 다를수있음 .
	}
	
	
	public static void getConnection() { //반환안해도 되게끔  static으로 한다.
		try {
			Class.forName(jdbcDriver);     //드라이버 불러옴 . 
			conn= DriverManager.getConnection(jdbcUrl,"STUDY","STUDY"); // 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	
	public void close() {
		if(rs != null){
			try {rs.close();}
			catch(SQLException ex) {ex.printStackTrace();}
		}
		if(pstmt != null) {
			try {pstmt.close();}
			catch(SQLException ex) {ex.printStackTrace();}
		}
		if(conn != null) {
			try {conn.close();}
			catch(SQLException ex) {ex.printStackTrace();}		
		}

	}

	
	
	
}
