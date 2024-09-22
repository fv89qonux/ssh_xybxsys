package com.my.scientific.dao;
import com.my.scientific.utils.Pager;
import java.util.*;

import com.my.scientific.model.*;
import com.my.scientific.base.dao.BaseDao;
import com.my.scientific.dao.*;
import com.my.scientific.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年07月24日 下午1:46:33 - 2021年11月26日 20时34分33秒
 */


public interface ManageDao extends BaseDao<Manage>{
	
	/**
	 * dao分页查询
	 * @param user
	 * @return
	 */
	Pager<Manage> findPager(Manage manage);
}
