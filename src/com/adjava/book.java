package com.adjava;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class book {
	
	
    @Id
	int id;
    
    

      String book,author;
      int Qnt;



	public int getQnt() {
		return Qnt;
	}



	public void setQnt(int qnt) {
		Qnt = qnt;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getBook() {
		return book;
	}



	public void setBook(String book) {
		this.book = book;
	}



	public String getAuthor() {
		return author;
	}



	public void setAuthor(String author) {
		this.author = author;
	}



}