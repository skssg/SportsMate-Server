package com.kh.sportsmate.member.model.dto;

import lombok.*;

import java.util.List;

/**
 * packageName    : com.kh.sportsmate.member.model.dto
 * fileName       : MemberEnroll
 * author         : jun
 * date           : 2024. 11. 7.
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024. 11. 7.        jun       최초 생성
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class MemberEnrollDto {
    private String memEmail;
    private String memPwd;
    private String memName;
    private String memGender;
    private String year;
    private String month;
    private String day;
    private String phone1;
    private String phone2;
    private String phone3;
    private String memAdd;
    private List category;
    private String soccerPosition;
    private String soccerSkill;
    private String futsalPosition;
    private String futsalSkill;
    private String basketballPosition;
    private String basketballSkill;

}
