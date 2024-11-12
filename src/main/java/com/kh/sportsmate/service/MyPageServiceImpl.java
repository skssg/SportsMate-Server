package com.kh.sportsmate.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sportsmate.board.model.dao.BoardDao;
import com.kh.sportsmate.match.model.vo.Match;
import com.kh.sportsmate.member.model.dao.MemberDao;
import com.kh.sportsmate.member.model.vo.Member;
import com.kh.sportsmate.team.model.vo.Recruit;
import com.kh.sportsmate.team.model.vo.Team;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MyPageServiceImpl implements MyPageService{
	
	@Autowired
	private final SqlSessionTemplate sqlSession;
	
	@Autowired
	private final MemberDao memberDao;
	
	// 내 정보
	@Override
	public Member selectMyInfo(int memNo) {
		return memberDao.selectMyInfo(sqlSession, memNo);
	}
	
	// 내 구단
	@Override
	public ArrayList<Team> selectMyTeam(int memNo) {
		return memberDao.selectMyTeam(sqlSession, memNo);
	}

	// 내 구단 입단 명단자
	@Override
	public ArrayList<Recruit> selectMyRecruit(int memNo) {
		return memberDao.selectMyRecruit(sqlSession, memNo);
	}
	
	// 내 전적
	@Override
	public ArrayList<Match> selectMyMatch(int memNo) {
		return memberDao.selectMyMatch(sqlSession, memNo);
	}

}