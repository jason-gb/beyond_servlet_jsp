package com.beyond.mvc.member.model.dao;

import java.sql.Connection;

import com.beyond.mvc.member.model.vo.Member;

public interface MemberDao {
	Member findMemberById(Connection connection, String userId);

	int insertMember(Connection connection, Member member);
}
