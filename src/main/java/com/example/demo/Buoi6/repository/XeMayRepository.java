package com.example.demo.Buoi6.repository;

import com.example.demo.Buoi6.entity.XeMay;
import org.springframework.data.jpa.repository.JpaRepository;

public interface XeMayRepository extends JpaRepository<XeMay, Integer> {

    XeMay findXeMayByMa(String ma);

}
