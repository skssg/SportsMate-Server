package com.kh.sportsmate.team.model.vo;

import lombok.*;

/**
 * packageName    : com.kh.sportsmate.team.model.vo
 * fileName       : TeamActivityDays
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
public class TeamActivityDays {
    private int teamNo;
    private char monday;
    private char tuesday;
    private char wednesday;
    private char thursday;
    private char friday;
    private char saturday;
    private char sunday;

}
