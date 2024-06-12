package com.w.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.w.Modal.Course;

@Repository
public interface Courseinfo extends JpaRepository<Course, Integer>{
	public Course findById(int id);

}
