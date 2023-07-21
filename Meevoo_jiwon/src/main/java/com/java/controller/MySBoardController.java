package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MySBoardController {

	//체육시설 리스트
	@RequestMapping("/mypage/mySport")
	public String mySport() {
		return "mypage/mySport";
	}
}
