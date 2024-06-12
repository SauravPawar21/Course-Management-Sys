package com.w.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.w.Modal.Buy;

@Repository
public interface Buyinfo extends JpaRepository<Buy, Integer>{
	public Buy findById(int id);

}
