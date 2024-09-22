package com.my.scientific.dao.impl;


import org.springframework.stereotype.Repository;
import com.my.scientific.model.Manage;
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
 * @date 2021年07月24日 下午1:46:33 - 2021年11月26日 20时34分33秒
 */

@Repository
public class ManageDaoImpl extends BaseDaoImpl<Manage> implements ManageDao{
	
 /**
  * 分页查询
  */
	@Override
	public Pager<Manage> findPager(Manage manage) {
		/*if(user.getRealName() !=null && !"".equals(user.getRealName() )){
	    	   String hql = "from Manage";
	    	   Map<String,Object> alias = new HashMap<String,Object>();
	   		   alias.put("1", "%" +manage.getId()+ "%" );
	   		  return findByAlias(hql, alias);
	       }else{
	    	   String hql = "from Manage where 1=1 order by id desc ";
				return findByAlias(hql, null);
	       }*/
		return null;
	}
	
}
