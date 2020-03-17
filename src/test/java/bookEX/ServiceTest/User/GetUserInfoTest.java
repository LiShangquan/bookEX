package bookEX.ServiceTest.User;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cqnu.bookEX.Application;
import com.cqnu.bookEX.service.user.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class GetUserInfoTest {
	
	@Autowired
	private UserService userService;
	@Test
	@Rollback//条件不满足回滚
	public void getUserInfo()
	{
		System.out.println(userService.getUserInfo((long) 1000));
	}
}
