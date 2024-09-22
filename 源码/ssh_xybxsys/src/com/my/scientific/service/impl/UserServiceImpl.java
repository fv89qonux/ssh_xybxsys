/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年11月26日 20时34分33秒
 */
package com.my.scientific.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.my.scientific.model.User;
import com.my.scientific.utils.Pager;
import com.my.scientific.service.UserService;
import java.util.*;

import com.my.scientific.model.*;
import com.my.scientific.dao.*;
import com.my.scientific.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年07月24日 下午1:46:33 - 2021年11月26日 20时34分33秒
 */

@Service("userServiceImpl")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService{
	 
	@Autowired
	private UserDao userDao;

	

}
