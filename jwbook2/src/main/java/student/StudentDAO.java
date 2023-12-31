package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JdbcUtil;

//Student 자료형으로 추가, 목록 확인 클래스
public class StudentDAO {
	//DB연결 및 종료, SQL 처리를 하는 메서드 생성
	Connection conn = null;
	PreparedStatement pstmt = null;	//SQL 처리 클래스
	ResultSet rs = null;	//검색한 데이터 셋
	
	//학생 목록 보기
	public List<Student> getStudentList() {
		conn = JdbcUtil.getConnection();
		List<Student> students = new ArrayList<>();
		try {
			String sql = "SELECT * FROM student ORDER BY sid";
			pstmt = conn.prepareStatement(sql);
			while(rs.next()) {
				Student s = new Student();
				s.setSid(rs.getInt("sid"));
				s.setUsername(rs.getString("username"));
				s.setUniv(rs.getString("univ"));
				s.setBirth(rs.getString("birth"));
				s.setEmail(rs.getString("email"));
				students.add(s);	//배열에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return students;
	}
	
}
