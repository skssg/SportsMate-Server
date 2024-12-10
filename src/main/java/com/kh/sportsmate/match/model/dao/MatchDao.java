package com.kh.sportsmate.match.model.dao;

import java.util.ArrayList;
import java.util.Map;

import com.kh.sportsmate.stadium.model.dto.TeamScore;
import com.kh.sportsmate.team.model.vo.Team;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sportsmate.match.model.dto.MyMatch;
import com.kh.sportsmate.match.model.dto.StadiumSubscription;
import com.kh.sportsmate.match.model.vo.Match;

@Repository
public class MatchDao {
	
	public StadiumSubscription selectMatch(SqlSessionTemplate sqlSession, Match mc) {
		return sqlSession.selectOne("matchMapper.selectMatch", mc);
	}
	
	public StadiumSubscription selectMatchA(SqlSessionTemplate sqlSession, Match mc) {
		return sqlSession.selectOne("matchMapper.selectMatchA", mc);
	}
	
	public StadiumSubscription selectMatchB(SqlSessionTemplate sqlSession, Match mc) {
		return sqlSession.selectOne("matchMapper.selectMatchB", mc);
	}
	
	public String mainRegionMatch(SqlSessionTemplate sqlSession, String activityArea) {
		return sqlSession.selectOne("matchMapper.mainRegionMatch", activityArea);
	}
	
	public ArrayList<MyMatch> mainMatchList(SqlSessionTemplate sqlSession, Map<String, String> map) {
		return (ArrayList) sqlSession.selectList("matchMapper.mainMatchList", map);
	}
	// 경기 카테고리 받아오기
	public String selectCategory(SqlSessionTemplate sqlSession,String matchNo) {
		return sqlSession.selectOne("matchMapper.selectCategory", matchNo);
	}
	// 경기 결과 점수 반영
	public int updateGameResult(SqlSessionTemplate sqlSession, TeamScore score) {
		return sqlSession.update("matchMapper.updateGameResult", score);
	}
}