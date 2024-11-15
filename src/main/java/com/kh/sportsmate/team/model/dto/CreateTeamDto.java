package com.kh.sportsmate.team.model.dto;

import lombok.*;

import java.util.ArrayList;

/**
 * packageName    : com.kh.sportsmate.team.model.dto
 * fileName       : CreateTeamDto
 * author         : jun
 * date           : 2024. 11. 15.
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024. 11. 15.        jun       최초 생성
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class CreateTeamDto {
    private int memNo;
    private String teamName;
    private ArrayList activityDays;
    private String teamCategory;
    private String activityTime;
    private String activityArea;
    private int teamMaxPerson;
    private String teamDescription;
}
