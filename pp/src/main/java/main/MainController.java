package main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}
	
	
	@RequestMapping("/main/index.do")
	public String mainIndex() {
		return "main/index";
	}
	
	@RequestMapping("/myinfo/index.do")
	public String myinfoIndex() {
		return "myinfo/index";
	}
	@RequestMapping("/myinfo/myinfo.do")
	public String myinfo() {
		return "myinfo/myinfo";
	}
	@RequestMapping("/project/index.do")
	public String projectinfo() {
		return "project/index";
	}
	@RequestMapping("/project/plan.do")
	public String projectplan() {
		return "project/plan";
	}
	@RequestMapping("/project/architecture.do")
	public String projectarchitecture() {
		return "project/architecture";
	}
	@RequestMapping("/front/html.do")
	public String fronthtml() {
		return "front/html";
	}
	@RequestMapping("/front/js.do")
	public String frontjs() {
		return "front/js";
	}
	@RequestMapping("/front/css.do")
	public String frontcss() {
		return "front/css";
	}
	@RequestMapping("/front/jquery.do")
	public String frontjquery() {
		return "front/jquery";
	}
}
