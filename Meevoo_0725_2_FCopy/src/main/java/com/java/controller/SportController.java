package com.java.controller;

import java.util.ArrayList;



import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.SListCurrDto;
import com.java.dto.SportDto;
import com.java.dto.SportPickDto;
import com.java.dto.SportReportDto;
import com.java.dto.SportReviewDto;
import com.java.dto.SportReviewReportDto;
import com.java.service.SportService;

@Controller
public class SportController {

	@Autowired
	SportService sportService;
	
	@Autowired HttpSession session;
	
	@RequestMapping("/sport/sportList")
	public String sportList(@RequestParam(defaultValue ="1")int page,
			Model model) {

		// 게시글 전체 가져오기
		HashMap<String,Object> map = sportService.selectAll(page);
		model.addAttribute("list", map.get("list"));
		
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));

		return "/sport/sportList";
	} // sportList
	
	
	@RequestMapping("/sport/sportListView")
	public String sportListView(@RequestParam(defaultValue = "1") int sfno,
			@RequestParam(defaultValue = "1")int page, SListCurrDto scurrdto, Model model) {

		// 게시글 1개 가져오기
		HashMap<String, Object> map = sportService.selectOne(sfno);
		model.addAttribute("sdto", map.get("sdto"));
		
		//하단 댓글 전체 가져오기
		ArrayList<SportReviewDto> sreList = sportService.selectReAll(sfno); 
		model.addAttribute("sreList", sreList);
		
		// 찜하기 목록 전체 가져오기
		ArrayList<SportPickDto> spickList = sportService.selectSpAll(sfno); 
		model.addAttribute("spickList", spickList);
		
		model.addAttribute("page", page);

		
		
		//최근본 게시물 데이터 기록
		String id = (String)session.getAttribute("sessionId");
		if(id!=null) {
			session.setAttribute("ssessionId", id);
		}
		scurrdto = sportService.insertSCurr(scurrdto, id);
		System.out.println("SportController id :"+id);
		System.out.println("SportController getId :"+scurrdto.getId());
		System.out.println("SportController getScurrno :"+scurrdto.getScurrno());
		System.out.println("SportController getSfno :"+scurrdto.getSfno());
		System.out.println("SportController getScurrdate :"+scurrdto.getScurrdate());
		
		
		
		return "/sport/sportListView";
	} // sportListView
	
	
	@RequestMapping("/sport/sportPick")
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportPickDto sportPick(SportPickDto spickDto, Model model) {
		
		// 1. 찜하기 등록
		SportPickDto spdto = sportService.sportPick(spickDto);
		
		System.out.println("등록 ajax에서 넘어온 아이디 : "+spickDto.getId());
		System.out.println("등록 ajax에서 넘어온 시설번호 : "+spickDto.getSfno());
		System.out.println("등록 ajax에서 넘어온 spickyn : "+spickDto.getSpickyn());
		return spdto;
	}
	
	@RequestMapping("/sport/sportPickCancel")
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportPickDto sportPickCancel(SportPickDto spickDto, Model model) {
		
		// 2. 찜하기 취소(업뎃)
		SportPickDto spdto = sportService.sportPickCancel(spickDto);
		
		System.out.println("등록 ajax에서 넘어온 아이디 : "+spickDto.getId());
		System.out.println("등록 ajax에서 넘어온 시설번호 : "+spickDto.getSfno());
		System.out.println("등록 ajax에서 넘어온 spickyn : "+spickDto.getSpickyn());
		return spdto;
	}
	
	
	@RequestMapping("/sport/sportPickUpdate")
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportPickDto sportPickUpdate(SportPickDto spickDto, Model model) {
		
		// 3. 시설물 다시 찜하기(업뎃)
		SportPickDto spdto = sportService.sportPickUpdate(spickDto);
		
		System.out.println("등록 ajax에서 넘어온 아이디 : "+spickDto.getId());
		System.out.println("등록 ajax에서 넘어온 시설번호 : "+spickDto.getSfno());
		System.out.println("등록 ajax에서 넘어온 spickyn : "+spickDto.getSpickyn());
		return spdto;
	}
	
	
	@RequestMapping("/sport/reviewInsert")
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportReviewDto reviewInsert(SportReviewDto sreDto) {
		System.out.println("등록 ajax에서 넘어온 아이디 : "+sreDto.getId());
		System.out.println("등록 ajax에서 넘어온 리뷰번호 : "+sreDto.getSreno());
		System.out.println("등록 ajax에서 넘어온 시설번호 : "+sreDto.getSfno());
		System.out.println("등록 ajax에서 넘어온 리뷰 데이터 : "+sreDto.getSrecontent());
		System.out.println("등록 ajax에서 넘어온 별점 : "+sreDto.getSstar());

		//하단리뷰 저장, 1개 가져오기
		SportReviewDto sreviewdto = sportService.reviewInsert(sreDto);
		
		return sreviewdto;
	} //reviewInsert
	
	@RequestMapping("/sport/reviewUpdateSave") //수정한 리뷰 저장
	@ResponseBody //데이터로 리턴해서 가져와라
	public SportReviewDto reviewUpdateSave(SportReviewDto sreDto) {
		
		//수정한 하단 리뷰 저장
		SportReviewDto sreviewdto = sportService.reviewUpdateSave(sreDto);
		return sreviewdto;
	} //reviewUpdateSave 
	
	
	@RequestMapping("/sport/reviewDelete")
	@ResponseBody //데이터로 리턴해서 가져와라
	public String reviewDelete(int sreno) {
		System.out.println("ajax 넘어온 데이터 : "+sreno);
		
		//하단 리뷰 1개 삭제하기
		sportService.reviewDelete(sreno);
		System.out.println(sreno);
		
		String result = "success";
		return result;
	} //reviewDelete
	
	
	@GetMapping("/sport/sportReviewReport")
	public String sportReviewReport(int sreno, Model model) {
		
		//리뷰글 번호, 아이디 가져오기
		HashMap<String, Object> map = sportService.selectSrenoOne(sreno);
		model.addAttribute("sreList", map.get("sreList"));
		
		
		return "sport/sportReviewReport";
	} // sportReviewReport
	
	
	@PostMapping("/sport/sportReviewReport")
	public String sportReportWrite(SportReviewReportDto srerepDto, Model model) {
		
		// 리뷰글에 대한 신고글 1개 작성
		sportService.insertReportOne(srerepDto);
		
		return "redirect:/sport/sportList";
	} // sportReviewReport
	

}
