package com.beyond.mvc.member.model.service;

import java.sql.Connection;

import static com.beyond.mvc.common.jdbc.JDBCTemplate.close;
import static com.beyond.mvc.common.jdbc.JDBCTemplate.getConnection;
import com.beyond.mvc.member.model.dao.MemberDaoImpl;
import com.beyond.mvc.member.model.vo.Member;

public class MemberServiceImpl implements MemberService {
	
	@Override
	public Member login(String userId, String userPwd) {
		Connection connection = getConnection();
		
		Member member = new MemberDaoImpl().findMemberById(connection, userId);
		
		if(member == null || !member.getPassword().equals(userPwd)) {
			return null;
		}
		
		close(connection);
		
		return member;
	}

	@Override
	public int save(Member member) {
		int result = 0;
		
		result = new MemberDaoImpl().insertMember(member);
		
		return result;
	}
}
