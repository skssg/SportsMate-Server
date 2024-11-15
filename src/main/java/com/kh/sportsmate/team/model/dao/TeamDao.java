package com.kh.sportsmate.team.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.kh.sportsmate.Attachment.model.vo.Profile;
import com.kh.sportsmate.team.model.vo.*;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sportsmate.board.model.vo.Board;
import com.kh.sportsmate.board.model.vo.BoardComment;
import com.kh.sportsmate.common.vo.PageInfo;

@Repository
public class TeamDao {
	public int selectListCount(SqlSessionTemplate sqlSession, int teamNo) {
		return sqlSession.selectOne("teamMapper.selectListCount", teamNo);
	}
	
	public ArrayList<TeamBoard> selectList(SqlSessionTemplate sqlSession, PageInfo pi, int teamNo) {
	    int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

	    Map<String, Object> params = new HashMap<>();
	    params.put("teamNo", teamNo);

	    return (ArrayList)sqlSession.selectList("teamMapper.selectList", params, rowBounds);
	}
	
	public ArrayList<TeamMember> selectMemberList(SqlSessionTemplate sqlSession, int teamNo) {
		return (ArrayList)sqlSession.selectList("teamMapper.selectMemberList", teamNo);
	}
	
	public TeamBoard detailList(SqlSessionTemplate sqlSession, int bno) {
		return (TeamBoard) sqlSession.selectOne("teamMapper.detailList", bno);
	}
	
	public ArrayList<TeamBoardComment> commentList(SqlSessionTemplate sqlSession, int bno) {
		return (ArrayList) sqlSession.selectList("teamMapper.commentList", bno);
	}
	
	public int commentCount(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.selectOne("teamMapper.commentCount", bno);
	}
	
	public int createBoard(SqlSessionTemplate sqlSession, TeamBoard b) {
		return sqlSession.insert("teamMapper.createBoard", b);
	}
	
	public int updateBoard(SqlSessionTemplate sqlSession, TeamBoard b) {
		return sqlSession.update("teamMapper.updateBoard", b);
	}
	
	public int deleteBoard(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.delete("teamMapper.deleteBoard", bno);
	}
	
	public int rejectJoin(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.delete("teamMapper.rejectJoin", mno);
	}
	
	public int approveJoin(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.delete("teamMapper.approveJoin", mno);
	}
	
	public int approveJoinTwo(SqlSessionTemplate sqlSession, Map<String, Integer> nos) {
		return sqlSession.insert("teamMapper.approveJoinTwo", nos);
	}
	
	public ArrayList<TeamBoard> searchBoard(SqlSessionTemplate sqlSession, PageInfo pi, Map<String, String> map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

	    return (ArrayList)sqlSession.selectList("teamMapper.searchBoard", map, rowBounds);
	}
	public int insertTeam(SqlSessionTemplate sqlSession, Team t){
		return sqlSession.insert("teamMapper.insertTeam", t);
	}
	public int insertActivityDays(SqlSessionTemplate sqlSession, TeamActivityDays days){
		return sqlSession.insert("teamMapper.insertActivityDays", days);
	}

}
