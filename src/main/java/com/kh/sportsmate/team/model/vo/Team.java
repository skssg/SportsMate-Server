package com.kh.sportsmate.team.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Team {
	private int teamNo;
	private int memNo;
	private String teamName;
	private String teamDescription;
	private int teamMaxPerson;
	private String teamCategory;
	private String activityTime;
	private String activityArea;
	private String status;
	private double score;
	private int teamPoint;
	private Date teamEnrollDate;
	private String application; // 모집 여부

	public Team(String teamName, int memNo, String teamDescription, int teamMaxPerson, String teamCategory, String activityTime, String activityArea) {
		this.teamName = teamName;
		this.memNo = memNo;
		this.teamDescription = teamDescription;
		this.teamMaxPerson = teamMaxPerson;
		this.teamCategory = teamCategory;
		this.activityTime = activityTime;
		this.activityArea = activityArea;
	}
}
