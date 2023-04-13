package sec04.ex1;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	//추가
	public MemberDAO() {
		try 
		{
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	public List<MemberVO> listMembers()
	{
		List<MemberVO> list = new ArrayList<MemberVO>();
		try
		{
			con=dataFactory.getConnection();
			String query = "select * from t_member1";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			
			while (rs.next())
			{
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}	

	public void addMember(MemberVO memberVO)
	{
		try
		{
			con = dataFactory.getConnection();
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			String query = "insert into t_member1";
			query += "(id,pwd,name,email)";
			query += "values(?,?,?,?)";
			System.out.println("prepareStatement: "+ query);
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.setString(2,pwd);
			pstmt.setString(3,name);
			pstmt.setString(4,email);
			pstmt.executeUpdate();
			pstmt.close();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void delMember(String id)
	{
		try
		{
			con = dataFactory.getConnection();
			
			String query = "delete from t_member1" + " where id=?";
			System.out.println("prepareStatememt:" + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
	
	public boolean isExisted(MemberVO memberVO)
	{
		boolean result = false;
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		try
		{
			con = dataFactory.getConnection();
			
			// decode() 함수를 이용하여 SQL문으로 회원 정보를 조회.
			// 아이디와 비밀번호가 테이블에 있으면 true를 반환하고, 없으면 false를 반환
			String query = "select decode(count(*),1,'true','false') as result from t_member1";
					query += " where id=? and pwd=?";
			System.out.println(query);
			
			// 메서드로 전달된 아이디와 비밀번호를 이용하여 SQL문을 작성한 후 데이터베이스에서 조회합니다.
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			rs.next(); //커서를 첫번째 레코드로 위치시킴.
			result = Boolean.parseBoolean(rs.getString("result"));
			System.out.println("result=" + result);
			System.out.println("아이디 : " + id);
			System.out.println("비밀번호 : " + pwd);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}
