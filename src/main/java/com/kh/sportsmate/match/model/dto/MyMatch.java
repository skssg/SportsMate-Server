package com.kh.sportsmate.match.model.dto;

import java.sql.Date;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class MyMatch {
	private int matchNo;
	private int stadiumNo;
	private int teamANo;
	private int teamBNo;
	private int scoreA;
	private int scoreB;
	private String category;
	private Date reservStart;
	private Date reservEnd;
	private Date accessDate;
	
	private String teamAName;
	private String teamBName;
	private int matchCount;
	private int winCount;
	private String teamAProfile;
	private String teamBProfile;
}