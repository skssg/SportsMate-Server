package com.kh.sportsmate.stadium.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sportsmate.member.model.vo.Member;
import com.kh.sportsmate.stadium.model.vo.StadiumQna;
import com.kh.sportsmate.stadium.service.StadiumService;

@CrossOrigin
@Controller
public class stadiumController {
	
	private final StadiumService stadiumService;
	
	@Autowired
    public stadiumController(StadiumService stadiumService) {
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
	
	/**
     * 문의 페이지
     *
     * @param model
     * @param session
     * @return
     */
	@RequestMapping(value = "inquiry.me")
    public String inquiry(Model m, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		int memNo = loginMember.getMemNo();
		
		ArrayList<StadiumQna> myInquiry = stadiumService.inquiryList(memNo);
		
		m.addAttribute("myInquiry", myInquiry);
		
        return "stadium_manager/inquiry";
    }
	
	/**
     * 문의 답장
     *
     * @param model
     * @param session
     * @return
     */
	@RequestMapping(value = "inquiryUpdate.me")
    public String inquiryUpdate(StadiumQna sq, HttpSession session) {
		int result = stadiumService.inquiryUpdate(sq);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "문의 답장 성공");
		} else {
			session.setAttribute("alertMsg", "문의 답장 실패");
		}
		
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
}