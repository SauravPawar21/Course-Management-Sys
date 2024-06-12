package com.w.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.w.Modal.Course;
import java.util.Optional;

@Repository
public interface Courseinfo extends JpaRepository<Course, Long> {
    public Course findById(long id);
}
