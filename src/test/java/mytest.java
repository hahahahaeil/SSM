import com.shen.pojo.Users;
import com.shen.service.UserService;
import com.shen.service.UserServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class mytest {
    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userServiceImpl = (UserService) context.getBean("userServiceImpl");
        for(Users users : userServiceImpl.getAllUsers()){
            System.out.println(users);
        }
    }
}
