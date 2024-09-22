package com.my.scientific.dao.impl;
/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年07月18日 17时10分49秒
 */
import org.springframework.stereotype.Repository;
import com.my.scientific.model.Worker;
import com.my.scientific.utils.Pager;
import com.my.scientific.base.dao.impl.BaseDaoImpl;
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

@Repository
public class WorkerDaoImpl extends BaseDaoImpl<Worker> implements WorkerDao{
	
 /**
  * 分页查询
  */
	@Override
	public Pager<Worker> findPager(Worker worker) {
		if(worker.getId() !=null && !"".equals(worker.getId() )){
	    	   String hql = "from Worker";
	    	   Map<String,Object> alias = new HashMap<String,Object>();
	   		   alias.put("1", "%" +worker.getId()+ "%" );
	   		  return findByAlias(hql, alias);
	       }else{
	    	   String hql = "from Worker where 1=1 order by id desc ";
				return findByAlias(hql, null);
	       }
	}
	
}
