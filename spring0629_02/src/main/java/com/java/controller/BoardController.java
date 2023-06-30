package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board/notice")
	public String notice(Model model) {
		ArrayList<BoardDto> list = new ArrayList<>();
		//게시글 전체 가져오기
		list = boardService.selectAll();
		model.addAttribute("list", list);
		
		return "board/notice";
	}

	@RequestMapping("/board/noticeView")
	public String noticeView() {
		return "board/noticeView";
	}
	
}
