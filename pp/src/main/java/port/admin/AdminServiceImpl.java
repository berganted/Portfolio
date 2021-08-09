package port.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service // bean에 등록
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao; // 페이지 메소드를 사용 할 수 있게됨
	


	@Override
	public AdminVo login(AdminVo vo) {
		 return dao.login(vo);
	}

}
