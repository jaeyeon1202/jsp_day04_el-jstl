package quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class memberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public memberDAO() {
		con = DBConnect.getConnect();
		System.out.println("quiz 생성자: "+con);
	}
	
	public int loginCheck(String id, String pwd) {
		System.out.println("quiz loginCheck 실행");
		System.out.println(id+"/비번"+pwd);
		int result=0; //아이디틀림
		String sql = "select * from members where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				if(pwd.equals(rs.getString("pwd"))) {
					result = 1; //로그인성공
				}else {
					result=1; //비번 틀림
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}//loginCheck
	
	public ArrayList<memberDTO> getList() {
		System.out.println("quiz getList 실행");
		
		ArrayList<memberDTO> list = new ArrayList<>();
		
		String sql = "select * from members";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				memberDTO dto = new memberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}//getList
	
	public memberDTO getInfo(String id) {
		System.out.println("quiz getInfo 실행");
		
		memberDTO dto = new memberDTO();
		String sql = "select * from members where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}//getInfo
	
	public int register(String id, String pwd, String name, String addr, String tel) {
		System.out.println("quiz register 실행");
		
		String sql = "insert into members values(?,?,?,?,?)";
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			ps.setString(3, name);
			ps.setString(4, addr);
			ps.setString(5, tel);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}//register
	
	public int modify(String id, String name, String addr, String tel) {
		System.out.println("quiz modify실행");
		
		String sql = "update members set name=?, addr=?, tel=? where id='"+id+"'";
		int result=0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, addr);
			ps.setString(3, tel);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("id:"+id);
		System.out.println("name:"+name);
		return result;
	}//modify
	
	public int delete(String id) {
		System.out.println("quiz delete 실행");
		
		String sql = "delete from members where id ='"+id+"'";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
