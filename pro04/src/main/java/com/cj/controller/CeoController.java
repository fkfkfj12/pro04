package com.cj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ceo/*")
public class CeoController {

	

	
	//회원 가입 - 약관 동의 페이지 로딩
		@GetMapping("ceo.do")
		public String getAgree(Model model) throws Exception {
			return "ceo/ceo";
}
}
