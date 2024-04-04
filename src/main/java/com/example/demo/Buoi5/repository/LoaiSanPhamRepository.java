package com.example.demo.Buoi5.repository;

import com.example.demo.Buoi5.entity.LoaiSp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoaiSanPhamRepository extends JpaRepository<LoaiSp, Integer> {
}
