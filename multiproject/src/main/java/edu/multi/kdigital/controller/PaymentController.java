package edu.multi.kdigital.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.multi.kdigital.dto.PaymentDto;
import edu.multi.kdigital.service.PaymentService;


@Controller
public class PaymentController {
	
	@Inject
	PaymentService pservice;

	@RequestMapping("/payment")
	public String payment(PaymentDto pay, Model model) {
		return "/payment";
	}
	
	// 데이터처리
    @RequestMapping(value = "/payinsert" , method = RequestMethod.POST)
    public ModelAndView paymentinfo(PaymentDto dto, ModelAndView mv) {
    	pservice.paymentinfo(dto);		
    	mv.setViewName("/main");
		return mv;
    }
}