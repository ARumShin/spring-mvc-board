package org.spring.controller;

import org.apache.ibatis.annotations.Param;
import org.spring.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RequestMapping("/board*")
@Controller
@Log4j
@AllArgsConstructor
public class BoardController {
	
	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	@RequestMapping("")
	public String boardMain(Model model) {
		model.addAttribute("boardList", service.getBoardList());
		return "/board/list";
	}
	
	@RequestMapping("/list")
//	public void getBoardList(@RequestParam("pageNum") int pageNum,Model model) {
	public void getBoardList(Model model) {
		log.info("/board/list");
		
		int limit = 10;
				
		int totalRecord = service.getListCount();
		int totalPage;
		
		int pageNum = 1;
		
		if(totalRecord % 10 == 0) {
			totalPage = totalRecord/limit;
			
		}else {
			totalPage = totalRecord/limit;
			Math.floor(totalPage);
			totalPage = totalPage + 1;
		}	
		
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("totalRecord", service.getListCount());
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("boardList", service.getBoardList());
		
	}

	
	
}
