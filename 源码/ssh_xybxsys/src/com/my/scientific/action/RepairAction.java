package com.my.scientific.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.my.scientific.utils.Pager;
import com.my.scientific.utils.UserUtils;
import com.opensymphony.xwork2.ModelDriven;
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

@Controller("repairAction")
@Scope("prototype")
public class RepairAction extends ActionSupport implements ModelDriven<Repair>{
	
	private static final long serialVersionUID = 1L;

	//==========model==============
	  private Repair repair;
		@Override
		public Repair getModel() {
			if(repair==null) repair = new Repair();
			return repair;	
		}
		//==========model==============
	/**
	 * 依赖注入 start dao/service/===
	 */
	@Autowired
	private RepairService repairService;
	@Autowired
	private WorkerService workerService;
	
	//依赖注入 end  dao/service/===
	
	//-------------------------华丽分割线---------------------------------------------
	
	//============自定义参数start=============
	
	//============自定义参数end=============
	
	//-------------------------华丽分割线---------------------------------------------
	
	//============文件上传start=======================================================
	private File file;
	//提交过来的file的名字
    private String fileFileName;
    //提交过来的file的MIME类型
    private String fileContentType;
    public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	 //============文件上传end=========================================================
			
	 //-------------------------华丽分割线---------------------------------------------//
	
	 //=============公=======共=======方=======法==========区=========start============//
	/**
	 * 列表分页查询
	 */
	public String repair(){
	    Map<String,Object> alias = new HashMap<String,Object>();
		StringBuffer sb = new StringBuffer();
		sb = sb.append("from Repair where 1=1 and status !=2 ");
		if(repair!=null && repair.getName() !=null && !"".equals(repair.getName())){
			sb.append("  and name like :name");
			alias.put("name", "%" +repair.getName()+ "%");
		}
		sb = sb.append(" order by id desc");
		Pager<Repair> pagers = repairService.findByAlias(sb.toString(),alias);
		ActionContext.getContext().put("pagers", pagers);
		ActionContext.getContext().put("Repair", repair);
		return SUCCESS;
    }
	
	/**
	 * 列表分页查询 维修人员查询代办
	 */
	public String repair3(){
	    Map<String,Object> alias = new HashMap<String,Object>();
		StringBuffer sb = new StringBuffer();
		sb = sb.append("from Repair where 1=1 and status = 1 and worker.id = "+UserUtils.getLoginId());
		if(repair!=null && repair.getName() !=null && !"".equals(repair.getName())){
			sb.append("  and name like :name");
			alias.put("name", "%" +repair.getName()+ "%");
		}
		sb = sb.append(" order by id desc");
		Pager<Repair> pagers = repairService.findByAlias(sb.toString(),alias);
		ActionContext.getContext().put("pagers", pagers);
		ActionContext.getContext().put("Repair", repair);
		return SUCCESS;
    }
	
	
//	private Integer id;
//	private String sbm;//设备名
//	private String yy;//原因
//	private String dd;//地点
//	private String phone;//手机号
//	private String name;
//	private String bm;//部门
//	private Worker worker;//维修工
//	private Integer status;//0未分配 1已分配 2已维修
//	private String fankui;//反馈
	public String repair4(){
	    Map<String,Object> alias = new HashMap<String,Object>();
		StringBuffer sb = new StringBuffer();
		sb = sb.append("from Repair where 1=1 and status =2 ");
		if(repair!=null && repair.getName() !=null && !"".equals(repair.getName())){
			sb.append("  and (name like :name or sbm like :sbm or yy like :yy or dd like :dd  or phone like :phone or bm like :bm or worker.userName like :userName) ");
			alias.put("name", "%" +repair.getName()+ "%");
			alias.put("sbm", "%" +repair.getName()+ "%");
			alias.put("yy", "%" +repair.getName()+ "%");
			alias.put("dd", "%" +repair.getName()+ "%");
			alias.put("phone", "%" +repair.getName()+ "%");
			alias.put("bm", "%" +repair.getName()+ "%");
			alias.put("userName", "%" +repair.getName()+ "%");
		}
		sb = sb.append(" order by id desc");
		Pager<Repair> pagers = repairService.findByAlias(sb.toString(),alias);
		ActionContext.getContext().put("pagers", pagers);
		ActionContext.getContext().put("Repair", repair);
		return SUCCESS;
    }
	/**
	 * 跳转到添加页面
	 * @return
	 */
	public String add(){
		return SUCCESS;
	}
	/*//设备名；故障原因；地点；电话；姓名;部门：后勤部；教务处；校长办公室；宿管部；
		private Integer id;
		private String sbm;//设备名
		private String yy;//原因
		private String dd;//地点
		private String phone;//手机号
		private String name;
		private String bm;//部门
		private Worker worker;//维修工
		private Integer status;//0未分配 1已分配 2已维修
		private String fankui;//反馈
*/	/**
	 * 执行添加
	 * @return
	 */
	public String exAdd(){
		repair.setStatus(0);
		repairService.save(repair);
		ActionContext.getContext().put("url", "/repair_add.do");
		return "redirect";
	}
	
	/**
	 * 统计
	 * @return
	 */
	public String report(){
		Map<String,Object> alias1 = new HashMap<String,Object>();
		String hql1="from Repair where 1=1 and bm = :bm1";
		alias1.put("bm1", "后勤部");
		List<Worker> listByAlias1 = workerService.listByAlias(hql1, alias1);
		
		Map<String,Object> alias2 = new HashMap<String,Object>();
		String hql2="from Repair where 1=1 and bm = :bm2";
		alias2.put("bm2", "教务处");
		List<Worker> listByAlias2 = workerService.listByAlias(hql2, alias2);
		
		Map<String,Object> alias3 = new HashMap<String,Object>();
		String hql3="from Repair where 1=1 and bm = :bm3";
		alias3.put("bm3", "校长办公室");
		List<Worker> listByAlias3 = workerService.listByAlias(hql3, alias3);
		
		Map<String,Object> alias4 = new HashMap<String,Object>();
		String hql4="from Repair where 1=1 and bm = :bm4";
		alias4.put("bm4", "宿管部");
		List<Worker> listByAlias4 = workerService.listByAlias(hql4, alias4);
		ActionContext.getContext().put("a1", listByAlias1.size());
		ActionContext.getContext().put("a2", listByAlias2.size());
		ActionContext.getContext().put("a3", listByAlias3.size());
		ActionContext.getContext().put("a4", listByAlias4.size());
		String haloo="from Repair where 1=1 and status =2 ";
		List<Repair> list = repairService.listByAlias(haloo, null);
		ActionContext.getContext().put("listNum", list.size());
		ActionContext.getContext().put("list", list);
		return "success";
	}
	/**
	 * 查看详情页面
	 * @return
	 */
	public String view(){
		Repair n = repairService.getById(repair.getId());
		ActionContext.getContext().put("Repair", n);
		return SUCCESS;
	}
	
	/**
	 * 跳转修改页面
	 * @return
	 */
	public String update(){
		Repair n = repairService.getById(repair.getId());
		ActionContext.getContext().put("Repair", n);
		return SUCCESS;
	}
	public String fp(){
		Repair n = repairService.getById(repair.getId());
		List<Worker> listByAlias = workerService.listByAlias("from Worker ", null);
		ActionContext.getContext().put("ws", listByAlias);
		ActionContext.getContext().put("Repair", n);
		return SUCCESS;
	}
	public String bl(){
		Repair n = repairService.getById(repair.getId());
		ActionContext.getContext().put("Repair", n);
		return SUCCESS;
	}
    
	/**
	 * 执行修改
	 * @return
	 */
	public String exUpdate(){
		Repair n = repairService.getById(repair.getId());
		n.setBm(repair.getBm());
		n.setDd(repair.getDd());
		n.setName(repair.getName());
		n.setPhone(repair.getPhone());
		n.setSbm(repair.getSbm());
		n.setYy(repair.getYy());
		repairService.update(n);
		ActionContext.getContext().put("url", "/repair_repair.do");
		return "redirect";
	}
	
	public String exFp(){
		Repair n = repairService.getById(repair.getId());
		n.setStatus(1);
		n.setWorker(repair.getWorker());
		repairService.update(n);
		ActionContext.getContext().put("url", "/repair_repair.do");
		return "redirect";
	}
	public String exBl(){
		Repair n = repairService.getById(repair.getId());
		n.setStatus(2);
		n.setFankui(repair.getFankui());
		repairService.update(n);
		ActionContext.getContext().put("url", "/repair_repair3.do");
		return "redirect";
	}
	/**
	 * 删除
	 * @return
	 */
	public String delete(){
		repairService.delete(repair.getId());
		ActionContext.getContext().put("url", "/repair_repair.do");
		return "redirect";
	}
	
	//=============公=======共=======方=======法==========区=========end============//
	
	 //-------------------------华丽分割线---------------------------------------------//
	
	 //=============自=======定=======义=========方=======法==========区=========start============//
	
	
	
	
	//=============自=======定=======义=========方=======法==========区=========end============//
		
	
	
}
