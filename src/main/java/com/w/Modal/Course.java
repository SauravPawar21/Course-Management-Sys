package com.w.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Course {
	  	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	  	@Column(name = "id")
	    private long id;
	  	@Column(name = "course_name")
	    private String courseName;
	    private double price;
	    @Column(name = "image_url")
	    private String imageUrl;
	    @Column(name = "course_desc")
	    private String courseDesc;
		public long getId() {
			return id;
		}
		public void setId(long id) {
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
		public Course(long id, String courseName, double price, String imageUrl, String courseDesc) {
			super();
			this.id = id;
			this.courseName = courseName;
			this.price = price;
			this.imageUrl = imageUrl;
			this.courseDesc = courseDesc;
		}
		public Course() {
			super();
			// TODO Auto-generated constructor stub
		}
		@Override
		public String toString() {
			return "Course [id=" + id + ", courseName=" + courseName + ", price=" + price + ", imageUrl=" + imageUrl
					+ ", courseDesc=" + courseDesc + "]";
		}
		
		
		
}
