package port.admin;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminCotroller {

	@Autowired
	AdminService service;
	@Autowired
//로그인페이지
	@RequestMapping("/login.do")
	public String login() {
		return "main/login";
	}
	@RequestMapping("/loging.do")
	public String logins(AdminVo vo,HttpSession sess,Model model) {
		AdminVo v = service.login(vo);
		if (v== null) {
			model.addAttribute("msg", "아이디와 비밀번호를 확인해 주세요");
			model.addAttribute("url", "/login.do");
			return "include/alert0";
		} else {
			sess.setAttribute("adInfo", v);
			return "redirect:index.do";
		}
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession sess,Model model) {
		sess.invalidate();
		model.addAttribute("msg", "로그아웃");
		model.addAttribute("url", "/pp/index.do");
		return "include/alert0";
	}
}
