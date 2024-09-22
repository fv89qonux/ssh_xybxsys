/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年07月21日 21时16分18秒
 */
package com.my.scientific.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.my.scientific.model.DepartMent;
import com.my.scientific.utils.Pager;
import com.my.scientific.service.DepartMentService;
import java.util.*;

import com.my.scientific.model.*;
import com.my.scientific.dao.*;
import com.my.scientific.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年07月24日 下午1:46:33 - 2021年07月21日 21时16分18秒
 */

@Service("departMentServiceImpl")
public class DepartMentServiceImpl extends BaseServiceImpl<DepartMent> implements DepartMentService{
	 
	@Autowired
	private DepartMentDao departMentDao;
	/**
	 * dao分页查询
	 * @param user
	 * @return
	 */
	@Override
	public Pager<DepartMent> findPager(DepartMent departMent) {
		return departMentDao.findPager(departMent);
	}
	

	

}
