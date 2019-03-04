package org.lwt.BMweb.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.lwt.BMweb.model.U_info;
import org.lwt.BMweb.model.User;
import org.lwt.BMweb.model.Zbm_info;
import org.lwt.BMweb.dao.UserDao;
import org.lwt.BMweb.service.impl.U_infoManager;
import org.lwt.BMweb.service.impl.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;


@Controller
@RequestMapping("/user")
@SessionAttributes("currUser")
public class UserController {
	
	private UserDao userDao; 
	private UserManager userMgr;
	private U_infoManager uinfoMgr;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@Autowired
	@Qualifier("userMgr")
	public void setUserMgr(UserManager userMgr) {
		this.userMgr = userMgr;
	}
	public UserManager getUserMgr() {
		return userMgr;
	}
	
	public U_infoManager getUinfoMgr() {
		return uinfoMgr;
	}

	@Autowired
	@Qualifier("uinfoMgr")
	public void setUinfoMgr(U_infoManager uinfoMgr) {
		this.uinfoMgr = uinfoMgr;
	}

	@RequestMapping("/login") 
	public String login() {
		return "singin";
	}
	
	@RequestMapping("/register") 
	public String register(Model model) {
		User user = new User();
		model.addAttribute(user);
		return "register";
	}
	
	//注册
		@RequestMapping(value="/process/register", method = RequestMethod.POST)
		public String createUser(@Valid User user, BindingResult bindingResult,HttpServletRequest request, Model model) {
			String u_pwd = request.getParameter("u_pwd");
			String u_pwd1 = request.getParameter("u_pwd1");
			if(bindingResult.hasErrors()){
				return "register";
			}
			if(userMgr.testByIdentity(user.getIdentity())!=null){
				return "redirect:/user/register?error=1";
			}
			else if(!(u_pwd.equals(u_pwd1))){
				return "redirect:/user/register?error=2";
			}
			else{
			userMgr.saveUser(user);
			model.addAttribute("currUser", user);
			return "redirect:/user/index";
			}
		}
	
	//登录
	@RequestMapping(value="/process/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, Model model) {
		String identity = request.getParameter("identity");
		String u_pwd = request.getParameter("pwd");
		User user = (User) userMgr.login(identity, u_pwd); 
		if(user==null){
			return "redirect:/user/login?error=1";
		}
			model.addAttribute("currUser", user);
			return "redirect:/user/index";

	}
	
	//登陆系统主页
	@RequestMapping("/index")
	public String index(@ModelAttribute("currUser") User user,Model model) {
		 U_info uinfo  = null;
		 uinfo = (U_info)uinfoMgr.testByIdentity(user.getIdentity());
		 model.addAttribute("uinfo",uinfo);
		 return "index";
	}
	
	//退出系统
	@RequestMapping(value="/index",params="logout",method=RequestMethod.GET)
	public String logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		return "redirect:/user/login";
	}
	
	//修改密码
	@RequestMapping(value="/editpwd/{identity}",method=RequestMethod.GET)
	public String editpwd(@PathVariable String identity,Model model) {
		
		User user = (User) userMgr.testByIdentity(identity);
		model.addAttribute("user",user);
		return "editpwd";

	}
	
	//修改密码
	@RequestMapping(value="/updatePwd",params="update",method=RequestMethod.POST)
	public String updateZbmInfo(HttpServletRequest request,@Valid User user,BindingResult bindingResult,Model model) {
		String identity = request.getParameter("identity");
		String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("newpwd");
		String cfnewpwd = request.getParameter("cfnewpwd");
		
		if(bindingResult.hasErrors()){
			return "redirect:/user/editpwd/"+identity+"?error=3";
		}
		
		//原密码错误
		if( userMgr.login(identity, oldpwd)==null){
			return "redirect:/user/editpwd/"+identity+"?error=1";
		}
		
		//两次输入密码不同
		else if(!(newpwd.equals(cfnewpwd))){
			return "redirect:/user/editpwd/"+identity+"?error=2";
		}
		
		else{
		Integer u_id = Integer.parseInt(request.getParameter("u_id"));
		user.setU_id(u_id);
		userMgr.updatePwd_info(identity, newpwd, user);
		model.addAttribute("user", user);
		
		return "redirect:/user/login";
		}
	}
}
