package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO {
 
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public boolean idCheck = false;
	
	public UserDAO() { //실제 DB에 접근해서 데이터를 가져오거나 데이터를 넣는 역할을 하는
		try {
			String dbURL = "jdbc:mysql://localhost:3306/BBSS";
			String dbID = "root";
			String dbPassword = "1234"; //비밀번호 넣는곳
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public int login(String userID,String userPassword) {
		String SQL = "SELECT password FROM clientlist WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); //첫번째 물음표 값 지정
			rs = pstmt.executeQuery(); //쿼리 실행
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					System.out.print(rs.getString(1));
					return 1; //로그인 성공
				}
				else 
					return 0 ; // 비밀번호 불일치
			}
			return -1; //아이디가 없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	
	public int join(User user) {
		String SQL = "INSERT INTO clientlist VALUES(?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserID());
			pstmt.setString(3, user.getUserPassword());
			pstmt.setString(4, user.getUserEmail());
			
			
			
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류 , 아이디가 겹치거나(아이디는 PRI라서 같이 못들어감)
	}
	
	public int check(String id) {
		String SQL = "SELECT id FROM clientlist";
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if(rs.getString("id").equals(id)) {
					return -1;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	public ArrayList<User> client() {
		String SQL = "SELECT id FROM clientlist";
		ArrayList<User> list = new ArrayList<User>();
		try {
			pstmt = conn.prepareStatement(SQL);
	        rs = pstmt.executeQuery();
			while(rs.next()) {
				User user = new User();
				user.setUserID(rs.getString(1));
				list.add(user);			
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
