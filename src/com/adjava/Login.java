package com.adjava;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Login {
	
	
	
	String name,pwd;
	@Id
	@GeneratedValue
	int id;
	String mybook;
	
	
	
	public String getMybook() {
		return mybook;
	}
	public void setMybook(String mybook) {
		this.mybook = mybook;
	}
	public int getId() {
	return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
