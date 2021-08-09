package port.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public List<BoardVo> selectAll(BoardVo vo){
		return sessionTemplate.selectList("port.selectAll",vo);
		
	}
	
	public int count(BoardVo vo) {
		return sessionTemplate.selectOne("port.count",vo);
	}
	public BoardVo detail(BoardVo vo) {
		return sessionTemplate.selectOne("port.detail",vo);
	}
	public void updateReadCount(BoardVo vo) {
		 sessionTemplate.update("port.updateReadCount",vo);
	}
	public int insert(BoardVo vo) {
		return sessionTemplate.insert("port.insert",vo);
	}
	public int update(BoardVo vo) {
		return sessionTemplate.update("port.update",vo);
	}
	public int delFilename(BoardVo vo) {
		return sessionTemplate.update("port.delFilename",vo);
	}
	public int delete(BoardVo vo) {
		return sessionTemplate.delete("port.delete", vo);
	}
	public int deleteGroup(BoardVo vo) {
		return sessionTemplate.delete("port.deleteGroup", vo);
	}
}
