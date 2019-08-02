package com.pineapple.service;

import java.util.List;

import com.pineapple.vo.Member;


public interface MemberService {
	
	void registerMember(Member member);
	
	Member findMemberByIdAndPasswd(String memberId, String passwd);
	
	List<Member> findMemberList();

	Member findMemberByMemberId(String memberId);

	void updateMember(Member member);

	void updateMemberType(Member member);


}
