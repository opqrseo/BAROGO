package edu.multi.kdigital;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class marketController {
@RequestMapping("/Market")

public String main(){ 
	
	return "Market"; 
	}

}


