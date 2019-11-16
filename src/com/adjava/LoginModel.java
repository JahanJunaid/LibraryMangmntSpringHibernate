package com.adjava;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.ui.Model;
public class LoginModel {
	SessionFactory factory;
	public LoginModel()
	{
		Configuration config=new Configuration().configure();
		factory=config.buildSessionFactory();
	}
	public String check(Login obj)
	{
		Session s=factory.openSession();
		Transaction t=s.beginTransaction();
		Query<Login> q=s.createQuery("select name,pwd from Login where name=? and pwd=?");
		q.setParameter(0,obj.name);
		q.setParameter(1, obj.pwd);
		List<Login> li=q.list();
		if(li.size()>0)
			return "home";
		else
			return "login";
	}
	//-------------------
	public void delete(book b)
	{
	Session se=factory.openSession();

	Transaction t=se.beginTransaction();
	Query<book>q=se.createQuery("delete from book where book=?");
	q.setParameter(0,b.getBook());
	q.executeUpdate();

	t.commit();
	se.close();
	}
	//--------------------------
	
	public List<Login> userdetails(Login obj2)
	{
	Session ses=factory.openSession();

	Transaction ts=ses.beginTransaction();
	Query<Login>qq=ses.createQuery("from Login");
	List<Login>lii=qq.list();
	return lii;
	}
	//----------------
	public List<book> bookdetails(book ob)
	{
	Session ses=factory.openSession();

	Transaction ts=ses.beginTransaction();
	Query<book>qq=ses.createQuery("from book");
	List<book>lii=qq.list();
	return lii;
	}
	//----------------
	
	public void addDetails(Login obj1) {
		Session sess=factory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(obj1);
		tx.commit();
		sess.close();
	}
	
	//--------------------------------
	
	public void insertbook(book b)
	{
	Session s=factory.openSession();
	System.out.println(b.getBook());
	Transaction t=s.beginTransaction();
	s.save(b);
	t.commit();
	s.close();

	}
	
	
	public void addToUser(String u,String b)
	{
	Session se=factory.openSession();

	Transaction t=se.beginTransaction();
	Query<book>q=se.createQuery("update Login  set mybook=? where name=?");
	System.out.println(u);
	System.out.println(b);
	
	q.setParameter(0,b);
	q.setParameter(1,u);
	q.executeUpdate();

	t.commit();
	se.close(); 
	
	}
	
	public void returnbook(String u)
	{
	Session se=factory.openSession();

	Transaction t=se.beginTransaction();
	Query<book>q=se.createQuery("update Login  set mybook=NULL where name=?");
	System.out.println(u);
	
	q.setParameter(0,u);
	q.executeUpdate();

	t.commit();
	se.close(); 
	
	}
/*	public  List<book> quantity(book ob,String bukname) {
		Session s=factory.openSession();
		Transaction t=s.beginTransaction();
		Query<book> q=s.createQuery("select Qnt from book where book=?");
		
		q.setParameter(0,bukname);
		System.out.println(bukname); 
		List<book>lii=q.list();
		
		q.executeUpdate();
		return lii;
	
	}*/
	public void checkbook(String bn,book b)
	{
		Session s=factory.openSession();
		Transaction t=s.beginTransaction();
		Query<book> q=s.createQuery("update book set Qnt=Qnt-1 where book=?");
		System.out.println(bn);
		System.out.println(); 
		
		q.setParameter(0,bn);
		
		q.executeUpdate();
		t.commit();
		   
	}
	public void checkbook1(String bn,book b)
	{
		Session s=factory.openSession();
		Transaction t=s.beginTransaction();
		Query<book> q=s.createQuery("update book set Qnt=Qnt+1 where book=?");
		System.out.println(bn);
		System.out.println(); 
		
		q.setParameter(0,bn);
		
		q.executeUpdate();
		t.commit();
		   
		
	}
	public List<Login> userbookdetails(String lo){
		Session ses=factory.openSession();

		Transaction ts=ses.beginTransaction();
		Query<Login>qq=ses.createQuery("from Login where name=?");
		qq.setParameter(0,lo);
		List<Login>lii=qq.list();
		return lii;
	}
	
}
