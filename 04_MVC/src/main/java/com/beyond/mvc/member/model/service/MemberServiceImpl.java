package com.beyond.mvc.member.model.service;

import static com.beyond.mvc.common.jdbc.JDBCTemplate.close;
import static com.beyond.mvc.common.jdbc.JDBCTemplate.getConnection;
import static com.beyond.mvc.common.jdbc.JDBCTemplate.commit;
import static com.beyond.mvc.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import com.beyond.mvc.member.model.dao.MemberDaoImpl;
import com.beyond.mvc.member.model.vo.Member;

public class MemberServiceImpl implements MemberService {

	@Override
	public Member login(String userId, String userPwd) {
		Connection connection = getConnection();
		
		Member member = new MemberDaoImpl().findMemberById(connection, userId);
		
		
		if (member == null || !member.getPassword().equals(userPwd)) {
			return null;
		}
		
		close(connection);
		
		return member;
	}

	@Override
	public int save(Member member) {
		int result = 0;
		Connection connection = getConnection();
		
		if(member.getNo() > 0) {
			//update
			result = new MemberDaoImpl().updateMember(connection, member);
		} else {
			// insert
			result = new MemberDaoImpl().insertMember(connection, member);
		}
		
		if(result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}
		
		close(connection);
		
		return result;
	}
	@Override
	public int delete(int no) {
		int result = 0;
		Connection connection = getConnection();
		
		result = new MemberDaoImpl().delete(connection, no);
		
		if(result > 0 ) {
			commit(connection);
		} else {
			rollback(connection);
		}
		
		close(connection);
		
		return result;
		
		
	}
	
	
}




