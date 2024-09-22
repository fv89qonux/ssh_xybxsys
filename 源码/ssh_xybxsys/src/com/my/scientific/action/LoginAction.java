package com.my.scientific.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.my.scientific.model.Manage;
import com.my.scientific.model.User;
import com.my.scientific.model.Worker;
import com.my.scientific.service.ManageService;
import com.my.scientific.service.UserService;
import com.my.scientific.service.WorkerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("loginAction")
@Scope("prototype")
public class LoginAction extends ActionSupport {

//============依赖注入start================
		@Autowired
		private ManageService manageService;//管理
		@Autowired
		private UserService userService;//用户
		@Autowired
		private WorkerService workerService;
		//===========依赖注入end==================
		
		//-------------------------华丽分割线---------------------------------------------
		
		//============自定义参数start=============
		   private String userName;
		   private String passWord;
		   private String phone;//手机号
			private String realName;//真实名
		   public String getPhone() {
				return phone;
			}
			public void setPhone(String phone) {
				this.phone = phone;
			}
			public String getRealName() {
				return realName;
			}
			public void setRealName(String realName) {
				this.realName = realName;
			}

		   private int role;
		   private Integer keyword1;
		   private Integer keyword2;
		
		public Integer getKeyword1() {
			return keyword1;
		}
		public void setKeyword1(Integer keyword1) {
			this.keyword1 = keyword1;
		}
		public Integer getKeyword2() {
			return keyword2;
		}
		public void setKeyword2(Integer keyword2) {
			this.keyword2 = keyword2;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassWord() {
			return passWord;
		}
		public void setPassWord(String passWord) {
			this.passWord = passWord;
		}
		public int getRole() {
			return role;
		}
		public void setRole(int role) {
			this.role = role;
		}
		//============自定义参数end=============
		
		//-------------------------华丽分割线---------------------------------------------
		
		//============文件上传start=============
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
		//============文件上传end=============
		
		//-------------------------华丽分割线---------------------------------------------

		//登陆页面
		public String login() {
			return "manageLogin";
		}
	   //注册页面(只有前台有注册)
		public String register() {
			/*User u = new User();
			u.setCreateTime(new Date());
			u.setPassWord(passWord);
			u.setPhone(phone);
			u.setRealName(realName);
			u.setUserName(userName);
	        userService.save(u);*/
			return "uLogin";
		}
		
		//医院概况
		public String yygk() {
			return "success";
		}
		//就医指南
		public String jyzn() {
			return "success";
		}
		
		
       //登录
		public String toLogin(){
//			  <option value="1">超级管理员</option>
//              <option value="2">管理员</option>
			
			if(role==4){//用户
				String hql = "from User where userName = :userName and passWord = :passWord";
				  Map<String,Object> alias = new HashMap<String,Object>();
				  alias.put("userName",userName);
				  alias.put("passWord", passWord);
				  List<User> userList= userService.getByHQL(hql, alias);
				if(userList.size()>0){
					//将用户信息放入session
					HttpSession session = ServletActionContext.getRequest()
							.getSession();
					session.setAttribute("userId",userList.get(0).getId() );
					session.setAttribute("user", userList.get(0));
					session.setAttribute("roleId", role);
					//查询5条公告
					return "manageIndex";
				}else{
					return "manageLogin";
				}
			}else{
				if(role == 3){//维修人员
					String hql = "from Worker where userName = :userName and passWord = :passWord";
					  Map<String,Object> alias = new HashMap<String,Object>();
					  alias.put("userName",userName);
					  alias.put("passWord", passWord);
					  List<Worker> byHQL = workerService.getByHQL(hql, alias);
					  if(byHQL.size()>0){
							//将用户信息放入session
							HttpSession session = ServletActionContext.getRequest()
									.getSession();
							session.setAttribute("userId",byHQL.get(0).getId() );
							session.setAttribute("worker", byHQL.get(0));
							session.setAttribute("roleId", role);
							//查询5条公告
							return "manageIndex";
						}else{
							return "manageLogin";
						}
				}else{
					String hql = "from Manage where name = :userName and passWord = :passWord and type="+role;
					  Map<String,Object> alias = new HashMap<String,Object>();
					  alias.put("userName",userName);
					  alias.put("passWord", passWord);
					List<Manage> manageList=manageService.getByHQL(hql, alias);
					if(manageList.size()>0){
						//将用户信息放入session
						HttpSession session = ServletActionContext.getRequest()
								.getSession();
						session.setAttribute("userName", manageList.get(0).getRealName());
						session.setAttribute("userId2",manageList.get(0).getId() );
						session.setAttribute("manage", manageList.get(0));
						session.setAttribute("roleId", role);
						return "manageIndex";
					}else{
						return "manageLogin";
					}
				}
			}
			
		}
		
		   //退出
			public String tuichu() {
				ActionContext ac = ActionContext.getContext();
				Map session = ac.getSession();
				session.remove("userName");
				session.remove("userId");
				if(role==1){
					return "userLogin";
				}else{
					return "manageLogin";
				}
			
			}
	
}
