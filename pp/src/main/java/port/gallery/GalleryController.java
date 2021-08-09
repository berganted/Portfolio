package port.gallery;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;





@Controller
public class GalleryController {
	private static final String UPLOAD_PATH = "/upload/gallery/";
	@Autowired
	GalleryService service;
	@Autowired
	
	static final String TALBENAME = "gallery";
	
	@RequestMapping("/portfolio/gallery/index.do")
	public String index(Model model,GalleryVo vo) {
		model.addAttribute("list",service.selectAll(vo));		
		return "portfolio/gallery/index";
	}
	@RequestMapping("/portfolio/gallery/detail.do")
	public String detail(Model model , GalleryVo vo, HttpServletRequest req) {
		
		model.addAttribute("vo",service.detail(vo));
		return "portfolio/gallery/view";
	}
	@RequestMapping("/portfolio/gallery/write.do")
	public String write() {
		return"portfolio/gallery/write";
	}
	@RequestMapping("/portfolio/gallery/insert.do")
	
	public String insert(Model model , GalleryVo vo,  HttpServletRequest req ,@RequestParam(value = "file") MultipartFile file, HttpServletResponse res,HttpSession sess) {
		String fileExt = "";
		int i = -1;
		if ((i = file.getOriginalFilename().lastIndexOf(".")) != -1) {
			fileExt = file.getOriginalFilename().substring(i);
		}
		// 파일명 랜덤 생성
		String fileNames = new Date().getTime() + fileExt;
		try {
			if (!file.getOriginalFilename().isEmpty()) {
				file.transferTo(new File(req.getRealPath(UPLOAD_PATH), fileNames)); // 파일저장
				vo.setFilename(fileNames); // 파일명 vo에 set
			}
		} catch (IOException e) {
			System.out.println(e.toString());
		}
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
	@RequestMapping("/portfolio/gallery/edit.do")
	public String edit(Model model , GalleryVo vo) {
		model.addAttribute("vo", service.edit(vo));
		
		return "/portfolio/gallery/edit";
	}
	@RequestMapping("/portfolio/gallery/delete.do")
	public String delete(GalleryVo vo,Model model) {
		int r = service.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
//	
	@RequestMapping("/portfolio/gallery/update.do")
	public String update(Model model , GalleryVo vo,HttpServletRequest req , HttpServletResponse res) {
			
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
//	public String delete(Model model, GalleryVo vo) {
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