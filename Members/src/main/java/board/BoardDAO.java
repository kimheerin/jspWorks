package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JdbcUtil;

public class BoardDAO {
	Connection conn = null;			//db 연결 및 종료
	PreparedStatement pstmt = null;	//sql 처리
	ResultSet rs = null;			//검색한 데이터넷
	
	//게시글 목록
	public List<Board> getBoardList(){
		List<Board> boardList = new ArrayList<>();
		
		try {
			//db 연결
			conn = JdbcUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM board ORDER BY createdate DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	//검색된 데이터셋(모음)
			while(rs.next()) {
				Board b = new Board();
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createDate"));
				b.setModifyDate(rs.getTimestamp("modifyDate"));
				b.setHit(rs.getInt("hit"));
				b.setId(rs.getString("id"));
				
				boardList.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	
	//글쓰기 제목
	public void write(Board b) {
		try {
			conn = JdbcUtil.getConnection();
			
			String sql = "INSERT INTO board (bno, title, content, filename, id) "
					+ "VALUES (seq_bno.NEXTVAL, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getFilename());
			pstmt.setString(4, b.getId());
			
			//sql 실행
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}
	//게시글 가져오기
	public Board getBoard(int bno) {
		Board b = new Board();
		try {
			conn = JdbcUtil.getConnection();
			String sql = "SELECT * FROM board WHERE bno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {	//검색한 데이터가 있으면
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createDate"));
				b.setModifyDate(rs.getTimestamp("modifyDate"));
				b.setHit(rs.getInt("hit"));
				b.setId(rs.getString("id"));
				
				//조회수 1 증가
				//int hit = rs.getInt("hit") + 1;
				sql = "UPDATE board SET hit = ? WHERE bno = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rs.getInt("hit") + 1);
				pstmt.setInt(2, bno);
				pstmt.executeUpdate(); //실행
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return b;
	}
	//게시글 삭제
	public void deleteboard(int bno) {
		try {
			conn = JdbcUtil.getConnection();
			
			String sql = "DELETE FROM board WHERE bno = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 실행
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}
	//게시글 수정 : 수정하여 가입시킴(가입과 유사)
	public void updateboard(Board b) {
		try {
			conn = JdbcUtil.getConnection();
			
			String sql = "UPDATE board SET title = ?, content = ?, modifydate = ? "
					+ "WHERE bno = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setTimestamp(3, null);
			pstmt.setInt(4, b.getBno());
			
			//sql 실행
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}

}//클래스
