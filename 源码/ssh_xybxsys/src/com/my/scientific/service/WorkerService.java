package com.my.scientific.service;

import com.my.scientific.model.Worker;
import com.my.scientific.utils.Pager;
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
public interface WorkerService extends BaseService<Worker>{

	/**
	 * dao层分页查询
	 */
	Pager<Worker> findPager(Worker worker);
}
