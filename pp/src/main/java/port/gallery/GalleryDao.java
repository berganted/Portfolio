package port.gallery;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class GalleryDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public List<GalleryVo> selectAll(GalleryVo vo){
		return sessionTemplate.selectList("gallery.selectAll",vo);
		
	}
	
	public int count(GalleryVo vo) {
		return sessionTemplate.selectOne("gallery.count",vo);
	}
	public GalleryVo detail(GalleryVo vo) {
		return sessionTemplate.selectOne("gallery.detail",vo);
	}
	public void updateReadCount(GalleryVo vo) {
		 sessionTemplate.update("gallery.updateReadCount",vo);
	}
	public int insert(GalleryVo vo) {
		return sessionTemplate.insert("gallery.insert",vo);
	}
	public int update(GalleryVo vo) {
		return sessionTemplate.update("gallery.update",vo);
	}
	public int delFilename(GalleryVo vo) {
		return sessionTemplate.update("gallery.delFilename",vo);
	}
	public int delete(GalleryVo vo) {
		return sessionTemplate.delete("gallery.delete", vo);
	}
	public int deleteGroup(GalleryVo vo) {
		return sessionTemplate.delete("gallery.deleteGroup", vo);
	}
}
