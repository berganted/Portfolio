package port.notice;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;





@Controller
public class BoardController {

	@Autowired
	BoardService service;
	@Autowired
	
	static final String TALBENAME = "board";
	
	@RequestMapping("/portfolio/notice/index.do")
	public String index(Model model,BoardVo vo) {
		model.addAttribute("list",service.selectAll(vo));		
		return "portfolio/notice/index";
	}
	@RequestMapping("/portfolio/notice/detail.do")
	public String detail(Model model , BoardVo vo, HttpServletRequest req) {
		
		model.addAttribute("vo",service.detail(vo));
		return "portfolio/notice/view";
	}
	@RequestMapping("/portfolio/notice/write.do")
	public String write() {
		return"portfolio/notice/write";
	}
	@RequestMapping("/portfolio/notice/insert.do")
	
	public String insert(Model model , BoardVo vo,  HttpServletRequest req , HttpServletResponse res,HttpSession sess) {
			//service.insert(vo);
			int r = service.insert(vo);
			if(r > 0) {
				model.addAttribute("msg", "정상적으로 등록 되었습니다.");
				model.addAttribute("url", "index.do");
						
			}else {
				model.addAttribute("msg", "등록실패.");
				model.addAttribute("url", "write.do");
			}
			return "include/alert0";			
	}
	@RequestMapping("/portfolio/notice/edit.do")
	public String edit(Model model , BoardVo vo) {
		model.addAttribute("vo", service.edit(vo));
		
		return "/portfolio/notice/edit";
	}
	@RequestMapping("/portfolio/notice/delete.do")
	public String delete(BoardVo vo,Model model) {
		int r = service.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
//	
	@RequestMapping("/portfolio/notice/update.do")
	public String update(Model model , BoardVo vo,HttpServletRequest req , HttpServletResponse res) {
			
			int r = service.update(vo);
			if(r > 0) {
				model.addAttribute("msg", "정상적으로 수정 되었습니다.");
				model.addAttribute("url", "index.do");
						
			}else {
				model.addAttribute("msg", "수정실패.");
				model.addAttribute("url", "edit.do?no="+vo.getNo());
			}
			return "include/alert0";			
	}
//	@RequestMapping("/board/delete.do")
//	public String delete(Model model, BoardVo vo) {
//		int r = service.delete(vo);
//		if(r > 0) {
//			model.addAttribute("result", "true");				
//		}else {
//			model.addAttribute("result", "false");
//		}
//		return "include/result";			
//	}
//	@RequestMapping("/comment/insert.do")
//	public String commentinsert(Model model , CommentVo vo) {
//			vo.setTablename(TALBENAME);
//			int r = cService.insert(vo);
//			if(r > 0) {
//				model.addAttribute("result", "true");
//						
//			}else {
//				model.addAttribute("result", "false");
//			}
//			return "include/result";			
//	}
//	@RequestMapping("/comment/list.do")
//	public String commentlist(Model model , CommentVo cv) {
//		cv.setTablename(TALBENAME);
//		model.addAttribute("list",cService.selectAll(cv));
//		return "/include/comment";
//}
//	@RequestMapping("/comment/delete.do")
//	public String delete(Model model, CommentVo vo) {
//		int r = cService.delete(vo);
//		if(r > 0) {
//			model.addAttribute("result", "true");				
//		}else {
//			model.addAttribute("result", "false");
//		}
//		return "include/result";
//	}
	
}