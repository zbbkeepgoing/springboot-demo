package com.dxc.ddccloud.demo.controller;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class DemoController {

	public int tmp = 0;
	
	@RequestMapping("/")
	public ModelAndView index(ModelAndView mv) {
		mv.setViewName("index");
		mv.addObject("requestname","This request is IndexApi");
		return mv;
	}
	
	@RequestMapping("/rightaway")
	public ModelAndView returnRightAway(ModelAndView mv) {
		mv.setViewName("index");
		mv.addObject("requestname","This request is RightawayApi");
		return mv;
	}
	
	@RequestMapping("/sleep")
	public ModelAndView returnSleep(ModelAndView mv) throws InterruptedException {
		Thread.sleep(tmp*1000);
		if(tmp < 10) {
			tmp++;
		}
		mv.setViewName("index");
		mv.addObject("requestname","This request is SleepApi"+",it will sleep "+ tmp +"s !");
		return mv;
	}
	
	
}
