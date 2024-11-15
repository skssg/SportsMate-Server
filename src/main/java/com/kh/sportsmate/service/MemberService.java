package com.kh.sportsmate.service;

import com.kh.sportsmate.Attachment.model.vo.Profile;
import com.kh.sportsmate.member.model.dto.MemberEnrollDto;
import com.kh.sportsmate.member.model.vo.Member;

/**
 * packageName    : com.kh.sportsmate.service
 * fileName       : MemberService
 * author         : jun
 * date           : 2024. 11. 7.
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024. 11. 7.        jun       최초 생성
 */
public interface MemberService {
    int insertMember(MemberEnrollDto m, Profile profile);
    Member loginMember(Member m);
}
