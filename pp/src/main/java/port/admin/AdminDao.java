package port.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public AdminVo login(AdminVo vo) {
		return sessionTemplate.selectOne("port.login",vo);
	}
}
