package port.gallery;

import java.util.List;


public interface GalleryService {
	List<GalleryVo>selectAll(GalleryVo vo);
	GalleryVo detail(GalleryVo vo);
	int insert(GalleryVo vo);
	GalleryVo edit(GalleryVo vo);
	int update(GalleryVo vo);
	int delete(GalleryVo vo);
//	int deleteGroup(GalleryVo vo);
}
