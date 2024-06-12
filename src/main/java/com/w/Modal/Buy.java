package com.w.Modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Buy {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String courseName;
	private double price;
	private String imageUrl;
	private String courseDesc;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getCourseDesc() {
		return courseDesc;
	}
	public void setCourseDesc(String courseDesc) {
		this.courseDesc = courseDesc;
	}
	public Buy(int id, String courseName, double price, String imageUrl, String courseDesc) {
		super();
		this.id = id;
		this.courseName = courseName;
		this.price = price;
		this.imageUrl = imageUrl;
		this.courseDesc = courseDesc;
	}
	public Buy() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Buy [id=" + id + ", courseName=" + courseName + ", price=" + price + ", imageUrl=" + imageUrl
				+ ", courseDesc=" + courseDesc + "]";
	}
}
