package com.kh.sportsmate.stadium.controller;

import java.sql.Time;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sportsmate.member.service.MemberService;
import com.kh.sportsmate.mypage.service.MyPageService;
import com.kh.sportsmate.stadium.model.dto.StadiumSearch;
import com.kh.sportsmate.stadium.model.vo.Stadium;
import com.kh.sportsmate.stadium.service.StadiumService;

@CrossOrigin
@Controller
public class stadiumController {
	
	private final StadiumService stadiumService;
    
    @Autowired
    public stadiumController( StadiumService stadiumService){
    	this.stadiumService = stadiumService;
    }
	
	@GetMapping(value = "managermypage.me")
    public String managermypage(String select) {
        return "stadium_manager/stadium_manager";
    }
	
	@RequestMapping(value = "gameschedule.me")
    public String gameschedule() {
        return "stadium_manager/game_schedule";
    }
	
	@RequestMapping(value = "gamefinish.me")
    public String gamefinish() {
        return "stadium_manager/game_finish";
    }
	
	@RequestMapping(value = "rentalapproval.me")
    public String rentalapproval() {
        return "stadium_manager/rental_approval";
    }
	
	@RequestMapping(value = "stadiuminfo.me")
    public String stadiuminfo() {
        return "stadium_manager/stadium_info";
    }
	
	@RequestMapping(value = "inquiry.me")
    public String inquiry() {
        return "stadium_manager/inquiry";
    }
	
	@RequestMapping(value = "managermypage.me")
    public String managermypage() {
        return "stadium_manager/stadium_manager";
    }
	
	@RequestMapping(value = "gameresult.me")
    public String gameresult() {
        return "stadium_manager/game_result";
    }
	
    @RequestMapping("/list.st")
    public String showStadiumList() {
        return "stadium/listPage";
    }
    
    @RequestMapping("/detail.st")
    public String showStadiumdatil() {
        return "stadium/detail";
    }
    
    @RequestMapping("searchStadium.st")
    public String searchResults(String stadiumName, String stadiumCategory, Time stadiumStartTime, Time stadiumEndTime, String selectedDate, Model model) {
    	StadiumSearch sd = new StadiumSearch(stadiumName, stadiumCategory, stadiumStartTime, stadiumEndTime, selectedDate);
		List<StadiumSearch> results = stadiumService.findStadiums(sd);
		
		model.addAttribute("selectedDate", selectedDate);
		model.addAttribute("results", results);
		return "stadium/listPage"; // 검색 결과 페이지
	}
}
