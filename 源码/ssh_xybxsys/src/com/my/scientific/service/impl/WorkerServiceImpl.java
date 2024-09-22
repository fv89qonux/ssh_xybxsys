/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年07月18日 17时10分49秒
 */
package com.my.scientific.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.my.scientific.model.Worker;
import com.my.scientific.utils.Pager;
import com.my.scientific.service.WorkerService;
import java.util.*;

import com.my.scientific.model.*;
import com.my.scientific.dao.*;
import com.my.scientific.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2021年07月24日 下午1:46:33 - 2021年07月18日 17时10分49秒
 */

@Service("workerServiceImpl")
public class WorkerServiceImpl extends BaseServiceImpl<Worker> implements WorkerService{
	 
	@Autowired
	private WorkerDao workerDao;
	/**
	 * dao分页查询
	 * @param user
	 * @return
	 */
	@Override
	public Pager<Worker> findPager(Worker worker) {
		return workerDao.findPager(worker);
	}
	

	

}
