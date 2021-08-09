package port.gallery;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GalleryServiceimpl implements GalleryService {
	@Autowired
	GalleryDao dao ;
	@Override
	public List<GalleryVo> selectAll(GalleryVo vo) {
		int totCount = dao.count(vo);	
		int totPage = totCount/vo.getPageRow();
		if(totCount % vo.getPageRow()>0) totPage++;
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()*vo.getPageRange()+1;
		int endPage = strPage + (vo.getPageRange()-1);
		if(endPage>totPage) {
			endPage = totPage;
		}
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		return dao.selectAll(vo);
	}
	@Override
	public GalleryVo detail(GalleryVo vo) {
		dao.updateReadCount(vo);
		return dao.detail(vo);
	}
	
	
	
	@Override
	public GalleryVo edit(GalleryVo vo) {
		return dao.detail(vo);
	}
	@Override
	public int insert(GalleryVo vo) {
		return dao.insert(vo);
	}
	
	@Override
	public int update(GalleryVo vo) {
		if("1".equals(vo.getIsDel())) {
			dao.delFilename(vo);
		}
		return dao.update(vo);
		
	}
	@Override
	public int delete(GalleryVo vo) {
		return dao.delete(vo);
		 
	}
//	@Override
//	public int deleteGroup(GalleryVo vo) {
//		return dao.deleteGroup(vo);
//	}

}
