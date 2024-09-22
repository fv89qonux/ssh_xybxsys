package com.my.scientific.dao.impl;
/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年07月21日 21时16分18秒
 */
import org.springframework.stereotype.Repository;
import com.my.scientific.model.DepartMent;
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
 * @date 2021年07月24日 下午1:46:33 - 2021年07月21日 21时16分18秒
 */

@Repository
public class DepartMentDaoImpl extends BaseDaoImpl<DepartMent> implements DepartMentDao{
	
 /**
  * 分页查询
  */
	@Override
	public Pager<DepartMent> findPager(DepartMent departMent) {
		if(departMent.getId() !=null && !"".equals(departMent.getId() )){
	    	   String hql = "from DepartMent";
	    	   Map<String,Object> alias = new HashMap<String,Object>();
	   		   alias.put("1", "%" +departMent.getId()+ "%" );
	   		  return findByAlias(hql, alias);
	       }else{
	    	   String hql = "from DepartMent where 1=1 order by id desc ";
				return findByAlias(hql, null);
	       }
	}
	
}
