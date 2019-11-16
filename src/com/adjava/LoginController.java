package com.adjava;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	
	@Autowired
	LoginModel lm;
	String userName;
	String bookName;
	int quantity;
	 
	
	@RequestMapping("/")
	public String showLogin(Model m) {
		//m.addAttribute("loginattribute",new Login());
		return "index";
	}
	//-----------------------
	
	@RequestMapping("index")
	private String Index() {
		return "index";
		// TODO Auto-generated method stub

	}
	//--------------------------
	@RequestMapping("indexlogin")
	public String showIndex(Model m) {
		
		return "login";}
	
	@RequestMapping("indexregister")
	public String showRegister(Model m) {
		
		return "registration";}
	//------------------
	/*@RequestMapping("dashboard")
	public String Dashboard(Model m) {
		return "dashboard";
		// TODO Auto-generated method stub

	}*/
	//---------------------
	
	@RequestMapping("forhome")
	public String home(@ModelAttribute("buk")book ob,Model m) {
		List<book> li=lm.bookdetails(ob);
		m.addAttribute("list",li);
		return "home";
		// TODO Auto-generated method stub

	}
	
	//------------------------
	

	//-------------------------
	@RequestMapping("addbooks")
	public String addbook(@ModelAttribute("books")book b,Model m)
	{if(b.book!=null)
	lm.insertbook(b);
	m.addAttribute("bookattributes",new book());
	List<book> li=lm.bookdetails(b);
	m.addAttribute("list",li);
	return "addbooks";

	}
	 
	
	
	//------------------------
	@RequestMapping("forservice")
	public String service(Model m) {
		// TODO Auto-generated method stub
       return "service";
	}
	//----------------------------------
	
	@RequestMapping("contactus")
	public String contactus(Model m) {
		// TODO Auto-generated method stub
      return "contactus";
	}
	
	@RequestMapping("addbook")
	public String insertbook() {
		
		return "bookview";
		// TODO Auto-generated method stub

	}
	//-------------------------
	@RequestMapping("deletebooks")
	public String delete(@ModelAttribute("delbook")book b,Model m)
	{
	lm.delete(b);
	//m.addAttribute("delbook",new book());

	List<book> li=lm.bookdetails(b);
	m.addAttribute("list",li);
	return "delete";
	}
	
	//------------------------------
	
	@RequestMapping("delete")
	public String deleteview(@ModelAttribute("delbook")book b,Model m)
	{
		List<book> li=lm.bookdetails(b);
		m.addAttribute("list",li);
	return "delete";
	}
	//---------
	
	@RequestMapping("viewuser")
	public String userview(@ModelAttribute("user")Login obj2,Model m) {
		List<Login> li=lm.userdetails(obj2);
		m.addAttribute("list",li);
		// TODO Auto-generated method stub
     return "userview";
	}
	//-------------------------
	@RequestMapping("forbook")
	public String bookview(@ModelAttribute("buk")book ob,Model m) {
		List<book> li=lm.bookdetails(ob);
		m.addAttribute("list",li);
		return "bookview";
		// TODO Auto-generated method stub

	}
	//----------------
	
	@RequestMapping("regaction")
	public String registration(@ModelAttribute("reg")Login obj1 ,Model m) {
		lm.addDetails(obj1);
		//m.addAttribute("regattribute", new Login());
		
		return "login";
		
		
	}
	
	
	@RequestMapping("loginaction")
	public String checkLogin(@ModelAttribute("bean")Login obj,@ModelAttribute("buk")book ob,Model m) {
		String s=lm.check(obj);
			//m.addAttribute("loginattribute",new Login());
			if((obj.name.equals("admin"))&&(obj.pwd.equals("admin"))){
				return "adminhome";
			}
			else if(s.equals("login")){
				m.addAttribute("errmsg","incorrect username or password");
				return "login";
			}
			else {
		
	
					List<book> li =lm.bookdetails(ob);
					m.addAttribute("list",li);
					
					
					userName=obj.getName();
					List<Login> lii =lm.userbookdetails(userName);
					m.addAttribute("loglist",lii);
					System.out.println(userName);
					
					System.out.println(quantity);
				return "home";}
	}
	//-------------
	@RequestMapping("addbooktouser")
	public String addBookToUser(@ModelAttribute("bean")Login obj,@RequestParam("bukname")String bukname,@ModelAttribute("buk")book bukob,Model m) {
		bookName=bukname;
		lm.addToUser(userName,bookName);
		
		lm.checkbook(bookName,bukob);
		
		List<book> li =lm.bookdetails(bukob);
		m.addAttribute("list",li);
		
		List<Login> lii =lm.userbookdetails(userName);
		m.addAttribute("loglist",lii);
		
		return "home";
	}
	@RequestMapping("returnbook")
	public String returnbookfromUser(@ModelAttribute("bean")Login obj,@ModelAttribute("buk")book bukob,Model m) {
		lm.returnbook(userName);
		
		lm.checkbook1(bookName,bukob);
		
		List<book> li =lm.bookdetails(bukob);
		m.addAttribute("list",li);
		
		return "home";
	}
	/*@RequestMapping("forbookinclude")
	public String bookviewinclude(@ModelAttribute("buk")book ob,Model m) {
		List<book> li=lm.bookdetails(ob);
		m.addAttribute("list",li);
		return "home";
		// TODO Auto-generated method stub

	}
*/
}  

