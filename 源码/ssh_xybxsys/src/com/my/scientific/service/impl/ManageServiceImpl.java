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
import com.my.scientific.model.Manage;
import com.my.scientific.utils.Pager;
import com.my.scientific.service.ManageService;
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

@Service("manageServiceImpl")
public class ManageServiceImpl extends BaseServiceImpl<Manage> implements ManageService{
	 
	@Autowired
	private ManageDao manageDao;
	/**
	 * dao分页查询
	 * @param user
	 * @return
	 */
	@Override
	public Pager<Manage> findPager(Manage manage) {
		return manageDao.findPager(manage);
	}
	

	

}
