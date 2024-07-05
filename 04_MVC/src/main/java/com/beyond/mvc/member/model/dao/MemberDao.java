package com.beyond.mvc.member.model.dao;

import java.sql.Connection;

import com.beyond.mvc.member.model.vo.Member;

public interface MemberDao {
	int insertMember(Member member);

	Member findMemberById(Connection connection, String userId);

}
