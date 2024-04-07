package com.example.demo.Buoi6.controller;

import com.example.demo.Buoi6.entity.LoaiXm;
import com.example.demo.Buoi6.entity.XeMay;
import com.example.demo.Buoi6.repository.LoaiXeMayRepository;
import com.example.demo.Buoi6.repository.XeMayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/xe-may")
public class XeMayController {

    @Autowired
    private XeMayRepository xeMayRepository;

    @Autowired
    private LoaiXeMayRepository loaiXeMayRepository;

    @GetMapping("/hien-thi")
    public String getAll(Model model) {
        List<XeMay> xeMayList = xeMayRepository.findAll();
        List<LoaiXm> loaiXmList = loaiXeMayRepository.findAll();
        model.addAttribute("list", xeMayList);
        model.addAttribute("listLoai", loaiXmList);
        return "/buoi6/xemays";
    }

    @PostMapping("/add")
    public String add(XeMay xeMay) {
        xeMayRepository.save(xeMay);
        return "redirect:/xe-may/hien-thi";
    }

    @GetMapping("/detail/{ma}")
    public String detail(Model model, @PathVariable Integer id) {
//    public String detail(Model model, @PathVariable String ma) {
        List<XeMay> xeMayList = xeMayRepository.findAll();
        model.addAttribute("list", xeMayList);
        List<LoaiXm> loaiXmList = loaiXeMayRepository.findAll();
        model.addAttribute("listLoai", loaiXmList);
        Optional<XeMay> optionalXeMay = xeMayRepository.findById(id);
        if (optionalXeMay.isPresent()) {
            model.addAttribute("xemay", optionalXeMay.get());
        }
//        XeMay xeMay = xeMayRepository.findXeMayByMa(ma);
//                    model.addAttribute("xemay", xeMay);
        return "/buoi6/xemays";
    }

    @GetMapping("/view-update/{id}")
    public String viewUpdate(Model model, @PathVariable Integer id) {
        List<LoaiXm> loaiXmList = loaiXeMayRepository.findAll();
        model.addAttribute("listLoai", loaiXmList);
        Optional<XeMay> optionalXeMay = xeMayRepository.findById(id);
        if (optionalXeMay.isPresent()) {
            model.addAttribute("xemay", optionalXeMay.get());
        }
        return "/buoi6/update";
    }

    @PostMapping("/update/{id}")
    public String update(XeMay xeMay) {
        xeMayRepository.save(xeMay);
        return "redirect:/xe-may/hien-thi";
    }

}
