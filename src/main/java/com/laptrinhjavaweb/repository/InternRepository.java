package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.InternEntity;

public interface InternRepository extends JpaRepository<InternEntity, Long> {

	List<InternEntity> findByFullname(String fullname);
}
