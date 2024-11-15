package com.kh.sportsmate.team.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.sportsmate.Attachment.model.vo.Profile;
import com.kh.sportsmate.common.vo.PageInfo;
import com.kh.sportsmate.team.model.dto.CreateTeamDto;
import com.kh.sportsmate.team.model.vo.*;

public interface TeamService {
    //게시글 총 갯수 가져오기
    int selectListCount(int teamNo);

    // 게시글 목록 가져오기
    ArrayList<TeamBoard> selectList(PageInfo pi, int teamNo);

    // 팀 목록 가져오기
    ArrayList<TeamMember> selectMemberList(int teamNo);

    // 게시글 내용 가져오기
    TeamBoard detailList(int bno);

    // 댓글 가져오기
    ArrayList<TeamBoardComment> commentList(int bno);

    // 댓글 수 구하기
    int commentCount(int bno);

    // 게시글 생성
    int createBoard(TeamBoard b);

    // 게시글 수정
    int updateBoard(TeamBoard b);

    // 게시글 삭제
    int deleteBoard(int bno);

    // 입단 허락
    int approveJoin(Map<String, Integer> nos);

    // 입단 거부
    int rejectJoin(int mno);

    // 게시글 검색
    ArrayList<TeamBoard> searchBoard(PageInfo pi, Map<String, String> map);

    // 댓글 입력
    int writeReply(Map<String, String> map);

    // 댓글 삭제
    int deleteReply(int cno);

    // 구단 창설
    int insertTeam(CreateTeamDto t, Profile profile);
}

